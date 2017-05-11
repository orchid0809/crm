<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pr2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script language="javascript" type="text/javascript" src="static/print/LodopFuncs.js"></script>
    <object id="LODOP_OB" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width="0"  
        height="0">  
        <embed id="LODOP_EM" type="application/x-print-lodop" width="0" height="0" pluginspage="Lodop/install_lodop32.exe"></embed>  
    </object>
    <script>
    var LODOP;  
    function f_print(){  
    LODOP = getLodop(document.getElementById('LODOP_OB'), document.getElementById('LODOP_EM'));  
            LODOP.SET_PRINT_PAGESIZE(1, 0, 0, "A3"); //规定纸张大小；使用A4纸。  
            //SET_PRINT_STYLE:设置纯文本打印项风格,格式：SET_PRINT_STYLE(strStyleName,varStyleValue)。  
            //strStyleName：打印风格名，设定纯文本风格名称及其含义如下：|varStyleValue：打印风格值，相关值如下：  
            //“FontName”： 字体名称。|值： 字符型，与操作系统字体名一致，缺省是“宋体”。  
            //“FontSize”： 字体大小。|值：数值型，单位是pt，缺省值是9，可以含小数，如13.5。  
            //“FontColor”： 字体颜色。|值：整数或字符型，如同CSS的color。  
            //“Bold”： 是否粗体。|值：数字型，1代表粗体，0代表非粗体，缺省值是0。  
            //“Italic”： 是否斜体。|值：数字型，1代表斜体，0代表非斜体，缺省值是0。  
            //“Underline”： 是否下滑线。|值：数字型，1代表有下划线，0代表无下划线，缺省值是0。  
            //“Alignment”： 内容左右靠齐方式。|值：数字型，1--左靠齐 2--居中 3--右靠齐，缺省值是1。  
            //“Angle”： 旋转角度。|值：数字型，逆时针旋转角度数，单位是度，0度表示不旋转  
      		LODOP.ADD_PRINT_IMAGE(10,50,800,800,"<img border='0' src='http://localhost:8080/crm/static/images/logo.jpg'>")
      
            //注意：设定样式可以覆盖，更多设置参考技术使用文档。  
        //    LODOP.SET_PRINT_STYLE("FontColor", "#000000");//字体颜色  
        //    LODOP.SET_PRINT_STYLE("FontSize", 13); //字体大小  
        //    LODOP.ADD_PRINT_HTM(50, 50, 1000, 800, document.getElementById("PrintHTML").innerHTML); //内容，参数（左边距，上边距，内容显示宽度，内容显示高度）  
      
      
            //LODOP.SET_PRINT_STYLE("FontColor", "#00ff00"); //更换颜色  
            //LODOP.ADD_PRINT_TEXT(80, 50, 360, 39, "更换颜色");  
            //LODOP.SET_PRINT_STYLE("FontSize", 24); //更换大小  
            //LODOP.ADD_PRINT_TEXT(110, 50, 360, 39, "更换大小");  
      
      
            //LODOP.ADD_PRINT_LINE(150, 50, 200, 50, 0, 1); //线，竖杠(上边距1,1左边距,上边距2,2左边距,intLineStyle, intLineWidth)  
            //intLineStyle:线条类型，默认为0；0--实线 1--破折线 2--点线 3--点划线 4--双点划线  
            //intLineWidth:线条宽，默认是1，整数型，单位是(打印)像素，非实线的线条宽也是0。  
           // LODOP.ADD_PRINT_LINE(150, 50, 150, 200, 0, 1); //线，横杠(上边距1,1左边距,上边距2,2左边距,intLineStyle, intLineWidth)  
            LODOP.PREVIEW();//打印预览  
            //LODOP. PRINT (); //不经打印预览的直接打印。  
    }  
	</script>
  </head>
  
  <body>
  进入<a href="javascript:;" onclick="javascript:f_print();">模板设计</a><br><br>
  
  <!-- 打印 样式 -->
	<div id="PrintHTML" style="background-color: white;">
		<table style="width: 100%;">
			<tr>
				<td colspan="3" style="height: 25px; text-align: center; font-weight: bold; font-size: 14px;">上海XX有限公司（上海旗舰店）</td>
			</tr>
			<tr>
				<td colspan="3" style="height: 25px; text-align: center; font-size: 14px;">定金单</td>
			</tr>
			<tr>
				<td style="width: 50%; height: 25px; font-size: 12px; text-align: left;" id="Print_CustomerInformation">客户:王某某	电话:13011112222	卡号:8021656090	渠道:1000000	到货通知:不通知</td>
				<td style="width: 10%; height: 25px;"></td>
				<td style="width: 40%; height: 25px; font-size: 12px; text-align: right;" id="Print_DateString">出货:14.10.10	开单:14.10.02	NO:535063</td>
			</tr>
			<tr>
				<td colspan="3" style="width: 100%; height: 25px; font-size: 12px;" id="Print_SendGoodsInformation">[寄货]123212  上海市上海市闸北区西藏北路9898号  （联系人：刘某某  13817489878）
				</td>
			</tr>
		</table>
		<table style="width: 100%; border: solid 1px black; border-collapse: collapse; table-layout: fixed; margin-top: 5px;" id="Print_OsaledInformation">
			<thead>
				<tr>
					<th style="width: 10%; font-size: 12px; text-align: center; border: 1px solid black;">条码<br />
						单内ID
					</th>
					<th style="width: 15%; font-size: 12px; text-align: center; border: 1px solid black;">名称<br />
						款号（镶口范围）
					</th>
					<th style="width: 10%; font-size: 12px; text-align: center; border: 1px solid black;">证书
					</th>
					<th style="width: 10%; font-size: 12px; text-align: center; border: 1px solid black;">重量
					</th>
					<th style="width: 15%; font-size: 12px; text-align: center; border: 1px solid black;">参数
					</th>
					<th style="width: 10%; font-size: 12px; text-align: center; border: 1px solid black;">原价<br />
						成品价
					</th>
					<th style="width: 30%; font-size: 12px; text-align: center; border: 1px solid black;">单内备注
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">00396097<br />
						888852
					</td>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">GIA
					</td>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">GIA-17097234</td>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">0.6ct</td>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">VS1 G VG VG EX</td>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">19590<br />
						19590</td>
					<td style="font-size: 12px; border: 1px solid black; word-wrap: break-word; padding-left: 4px;">保留裸钻 无内刻</td>
				</tr>
				<tr>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">26606188<br />
						888853</td>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">铂900钻石对戒<br />
						RB939</td>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">2014I1274123766</td>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">3.674 g 主:0.079ct*28</td>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">----</td>
					<td style="font-size: 12px; text-align: center; border: 1px solid black;">3250<br />
						3250</td>  
					<td style="font-size: 12px; border: 1px solid black; word-wrap: break-word; padding-left: 4px;">保留异调(成都-上海) 对戒 材质:铂900 手寸:11 无内刻 表面处理:抛光</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td rowspan="1" colspan="7" style="font-size: 12px; height: 50px; border: 1px solid black;"></td>
				</tr>
				<tr>
					<td colspan="6" style="font-size: 12px; height: 30px; text-align: left; border: 1px solid black; padding-left: 20px;" id="Print_AmountName">实收金额(大写)：<b>伍佰零拾零元零角</b>（E1411-0000043  现金）</td>
					<td style="font-size: 12px; text-align: left; border: 1px solid black; padding-left: 20px;" id="Print_osaled_earnest">定金：500</td>
				</tr>
			</tfoot>
		</table>
		<table style="width: 100%; table-layout: fixed; margin-top: 20px;">
			<tr>
				<td style="width: 50%; height: 25px; font-size: 12px; text-align: left; font-weight: bold;">客户须知
					<ol>
						<li>定金单作为取货的重要凭证，请您妥善保管，结单时请同时携带定单及身份证件。</li>
						<li>非定制类商品订单有效期30天，即于定金单显示的出货日期30天内结单，定制类商品（刻
							字属于定制类商品）订单有效期60天,即于定金单显示的出货日期60天内结单,如客户未能
							按时结单，则视为合同自动解除,XXXX所收定金将视为违约金,不予返还
						</li>
						<li>如过出货日期仍未收到我们的到货通知，请尽快联系我们的客服中心，查询定单具体情况。
						</li>
					</ol>
				</td>
				<td style="width: 10%; height: 25px;"></td>
				<td style="width: 40%; height: 25px; font-size: 12px; text-align: center; vertical-align: middle;">上海旗舰店：南京东路XXX号XX广场8层 (九江路XXX号侧门电梯直达)<br />
					客服电话：400-880-00XX<br />
					专业XX网站：www.XX.com
				</td>
			</tr>
		</table>
		<table style="width: 100%; border-collapse: collapse; margin-top: 20px;">
			<tr>
				<td style="font-size: 12px; text-align: left;">营业员：0000	收银员：0096</td>
				<td style="font-size: 12px; text-align: left;">销售（签字）：<input type="text" style="border: 0px; border-bottom: 1px solid black;" /></td>
				<td style="font-size: 12px; text-align: left;">顾客（签字）：<input type="text" style="border: 0px; border-bottom: 1px solid black;" /></td>
				<td style="font-size: 12px; text-align: right;">★号代表刻爱心符号<br />
					取货凭证自取货日起保留期一年</td>
			</tr>
			<tr>
				<td colspan="4" style="font-size: 12px; height: 40px; text-align: right;">1/1</td>
			</tr>
		</table>
	</div>
  </body>
</html>
