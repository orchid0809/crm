/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2017-03-10 09:10:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp.system.index;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class tab_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\t<head>\r\n");
      out.write("\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"static/js/jquery-1.7.2.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"plugins/tab/js/framework.js\"></script>\r\n");
      out.write("\t<link href=\"plugins/tab/css/import_basic.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\t<link  rel=\"stylesheet\" type=\"text/css\" id=\"skin\" prePath=\"plugins/tab/\" /><!--默认相对于根目录路径为../，可添加prePath属性自定义相对路径，如prePath=\"");
      out.print(request.getContextPath());
      out.write("\"-->\r\n");
      out.write("\t<script type=\"text/javascript\" charset=\"utf-8\" src=\"plugins/tab/js/tab.js\"></script>\r\n");
      out.write("\t</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"tab_menu\"></div>\r\n");
      out.write("<div style=\"width:100%;\">\r\n");
      out.write("\t<div id=\"page\" style=\"width:100%;height:100%;\"></div>\r\n");
      out.write("</div>\t\t\r\n");
      out.write("</body>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("function tabAddHandler(mid,mtitle,murl){\r\n");
      out.write("\ttab.update({\r\n");
      out.write("\t\tid :mid,\r\n");
      out.write("\t\ttitle :mtitle,\r\n");
      out.write("\t\turl :murl,\r\n");
      out.write("\t\tisClosed :true\r\n");
      out.write("\t});\r\n");
      out.write("\ttab.add({\r\n");
      out.write("\t\tid :mid,\r\n");
      out.write("\t\ttitle :mtitle,\r\n");
      out.write("\t\turl :murl,\r\n");
      out.write("\t\tisClosed :true\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\ttab.activate(mid);\r\n");
      out.write("}\r\n");
      out.write(" var tab;\t\r\n");
      out.write("$( function() {\r\n");
      out.write("\t tab = new TabView( {\r\n");
      out.write("\t\tcontainerId :'tab_menu',\r\n");
      out.write("\t\tpageid :'page',\r\n");
      out.write("\t\tcid :'tab1',\r\n");
      out.write("\t\tposition :\"top\"\r\n");
      out.write("\t});\r\n");
      out.write("\ttab.add( {\r\n");
      out.write("\t\tid :'tab1_index1',\r\n");
      out.write("\t\ttitle :\"主页\",\r\n");
      out.write("\t\turl :\"");
      out.print(basePath);
      out.write("login_default.do\",\r\n");
      out.write("\t\tisClosed :false\r\n");
      out.write("\t});\r\n");
      out.write("\t/**tab.add( {\r\n");
      out.write("\t\tid :'tab1_index1',\r\n");
      out.write("\t\ttitle :\"主页\",\r\n");
      out.write("\t\turl :\"/per/undoTask!gettwo\",\r\n");
      out.write("\t\tisClosed :false\r\n");
      out.write("\t});\r\n");
      out.write("\t**/\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("\tfunction cmainFrameT(){\r\n");
      out.write("\t\tvar hmainT = document.getElementById(\"page\");\r\n");
      out.write("\t\tvar bheightT = document.documentElement.clientHeight;\r\n");
      out.write("\t\thmainT .style.width = '100%';\r\n");
      out.write("\t\thmainT .style.height = (bheightT  - 41) + 'px';\r\n");
      out.write("\t}\r\n");
      out.write("\tcmainFrameT();\r\n");
      out.write("\twindow.onresize=function(){  \r\n");
      out.write("\t\tcmainFrameT();\r\n");
      out.write("\t};\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
