package com.fh.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.fh.util.CommUtil;


/**
 * 
 * @author Administrator
 *
 */
public class CModelAndView extends ModelAndView{

	public CModelAndView(String viewName) {
		super.setViewName(viewName);
	}

	public CModelAndView(String viewName, 
			HttpServletRequest request, HttpServletResponse response) {
		String contextPath = request.getContextPath().equals("/") ? ""
				: request.getContextPath();
		String webPath = CommUtil.getURL(request);
		String port = ":"
				+ CommUtil.null2Int(Integer.valueOf(request.getServerPort()));
		
		super.setViewName(viewName);
		
		super.addObject("webPath", webPath);
	
		super.addObject("httpInclude", new HttpInclude(request, response));
		String query_url = "";
		if ((request.getQueryString() != null)
				&& (!request.getQueryString().equals(""))) {
			query_url = "?" + request.getQueryString();
		}
		super.addObject("current_url", request.getRequestURI() + query_url);
		

	
	}
}
