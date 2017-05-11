package com.fh.controller.recruit.recruit;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.fh.param.RecruitSearchParam;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.recruit.RecruitInfo;
import com.fh.entity.system.Role;
import com.fh.entity.system.User;
import com.fh.param.RecruitInfoParam;
import com.fh.service.recruit.recruit.RecruitManager;
import com.fh.service.recruitInfo.recruitinfo.RecruitInfoManager;
import com.fh.service.system.role.RoleManager;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.Jurisdiction;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;

/** 
 * 说明：招聘
 * 创建人：FH Q313596790
 * 创建时间：2017-03-09
 */
@Controller
@RequestMapping(value="/recruit")
public class RecruitController extends BaseController {
	
	String menuUrl = "recruit/list.do"; //菜单地址(权限用)
	@Resource(name="recruitService")
	private RecruitManager recruitService;
	
	@Autowired
	private RoleManager roleManager;
	
	@Autowired
	private RecruitInfoManager recruitInfoManager;
	
	/**保存
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save(RecruitInfoParam param) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增Recruit");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String key = this.get32UUID();
		pd.put("RECRUIT_ID", key);	//主键
		Session session = Jurisdiction.getSession();
		User user = (User)session.getAttribute(Const.SESSION_USER);
		Role role =roleManager.getRoleById(user.getROLE_ID());
		String roleName = role.getROLE_NAME();
		pd.put("PUBLISH_NAME", roleName);
		
		System.out.println("职位：。。。。。。。。"+param.getRecruits());
		
		recruitService.save(pd);
		if(param.getRecruits() != null && param.getRecruits().size() > 0){
			for(RecruitInfo rec: param.getRecruits()){
				PageData pageData = new PageData();
				pageData.put("RECRUIT_POSITION", rec.getRecruitPosition());
				pageData.put("RECRUIT_CNT", rec.getRecruitCnt());
				pageData.put("POSITION_REQUIRE", rec.getPositionRequire());
				pageData.put("RECRUIT_ID", key);
				//RECRUITINFO_ID
				System.out.println("uuid:"+this.get32UUID());
				pageData.put("RECRUITINFO_ID", this.get32UUID());
				recruitInfoManager.save(pageData);
			}
		}
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**删除
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"删除Recruit");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		recruitService.delete(pd);

		out.write("success");
		out.close();
	}

	@RequestMapping("/print")
	public ModelAndView print()throws Exception{
		ModelAndView mv = this.getModelAndView();

		PageData pd = new PageData();
		pd = this.getPageData();
		pd = recruitService.findById(pd);	//根据ID读取
		mv.setViewName("recruit/recruit/recruit_edit");
		mv.addObject("msg", "edit");
		String recruitId = (String)pd.get("RECRUIT_ID");
		List<PageData> pageDatas = recruitInfoManager.findByRecruitId(pd);
		mv.addObject("pageDatas",pageDatas);
		mv.addObject("pd", pd);
		mv.setViewName("recruit/recruit/recruit_print");
		return mv;
	}
	
	/**修改
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit(RecruitInfoParam param) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改Recruit");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Session session = Jurisdiction.getSession();
		User user = (User)session.getAttribute(Const.SESSION_USER);
		Role role =roleManager.getRoleById(user.getROLE_ID());
		String roleName = role.getROLE_NAME();
		pd.put("PUBLISH_NAME", roleName);
		recruitService.edit(pd);
		String key = (String)pd.get("RECRUIT_ID");
		if(param.getRecruits() != null && param.getRecruits().size() > 0){
			for(RecruitInfo rec: param.getRecruits()){

				PageData pageData = new PageData();
				pageData.put("RECRUIT_POSITION", rec.getRecruitPosition());
				pageData.put("RECRUIT_CNT", rec.getRecruitCnt());
				pageData.put("POSITION_REQUIRE", rec.getPositionRequire());
				//

				//表示之前有的。这次是更新
				if(rec.getRecruitInfoId() != null){
					pageData.put("RECRUITINFO_ID",rec.getRecruitInfoId());
					recruitInfoManager.edit(pageData);
				}else{
					//新增的
					pageData.put("RECRUIT_ID", key);
					pageData.put("RECRUITINFO_ID", this.get32UUID());
					recruitInfoManager.save(pageData);
				}

			}
		}
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page,RecruitSearchParam param) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"列表Recruit");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String recruitPhone = pd.getString("recruitPhone");				//关键词检索条件
		if(null != recruitPhone && !"".equals(recruitPhone)){
			pd.put("recruitPhone", recruitPhone.trim());
		}
		page.setPd(pd);
		List<PageData>	varList = recruitService.list(page);	//列出Recruit列表
		List<PageData> temps = new ArrayList<PageData>();
		if(varList != null && varList.size() > 0){
			for(PageData pageData : varList){
				String recruitId = (String)pageData.get("RECRUIT_ID");
				pd.put("RECRUIT_ID", recruitId);
				String position = (String)pd.get("recruitPosition");
				List<PageData> pageDatas = recruitInfoManager.findByRecruitId(pd);
				if((pageDatas != null && pageDatas.size() > 0) || (position == null || "".equals(position))){
					StringBuffer recruitStr = new StringBuffer();
					for(PageData pData : pageDatas){
						recruitStr.append(pData.get("RECRUIT_POSITION")+"/"+pData.get("RECRUIT_CNT")+"/"+pData.get("POSITION_REQUIRE")+"<br/>");
					}
					pageData.put("recInfo", recruitStr.toString());
				}else{
					temps.add(pageData);
				}
			}
		}
		varList.removeAll(temps);
		mv.setViewName("recruit/recruit/recruit_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		return mv;
	}
	
	/**去新增页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		mv.setViewName("recruit/recruit/recruit_edit");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		return mv;
	}	
	
	 /**去修改页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = recruitService.findById(pd);	//根据ID读取
		mv.setViewName("recruit/recruit/recruit_edit");
		mv.addObject("msg", "edit");
		String recruitId = (String)pd.get("RECRUIT_ID");

		List<PageData> pageDatas = recruitInfoManager.findByRecruitId(pd);
		/*if(pageDatas != null && pageDatas.size() > 0){

		}*/
		mv.addObject("pageDatas",pageDatas);
		mv.addObject("pd", pd);
		return mv;
	}	
	
	 /**批量删除
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"批量删除Recruit");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if(null != DATA_IDS && !"".equals(DATA_IDS)){
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			recruitService.deleteAll(ArrayDATA_IDS);
			pd.put("msg", "ok");
		}else{
			pd.put("msg", "no");
		}
		pdList.add(pd);
		map.put("list", pdList);
		return AppUtil.returnObject(pd, map);
	}
	
	 /**导出到excel
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"导出Recruit到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("发布");	//1
		titles.add("企业名称");	//2
		titles.add("联系电话");	//3
		titles.add("地址");	//4
		titles.add("发布时间");	//5
		titles.add("截止时间");	//6
		titles.add("金额");	//7
		titles.add("备注");	//8
		dataMap.put("titles", titles);
		List<PageData> varOList = recruitService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for(int i=0;i<varOList.size();i++){
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("PUBLISH_NAME"));	    //1
			vpd.put("var2", varOList.get(i).getString("ENTERPRISE_NAME"));	    //2
			vpd.put("var3", varOList.get(i).getString("CONTACT_PHONE"));	    //3
			vpd.put("var4", varOList.get(i).getString("ENTERPRISE_ADDRESS"));	    //4
			vpd.put("var5", varOList.get(i).getString("PUBLISH_TIME"));	    //5
			vpd.put("var6", varOList.get(i).getString("DEADLINE_TIME"));	    //6
			vpd.put("var7", varOList.get(i).getString("AMOUNT"));	    //7
			vpd.put("var8", varOList.get(i).getString("REMARK"));	    //8
			varList.add(vpd);
		}
		dataMap.put("varList", varList);
		ObjectExcelView erv = new ObjectExcelView();
		mv = new ModelAndView(erv,dataMap);
		return mv;
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
