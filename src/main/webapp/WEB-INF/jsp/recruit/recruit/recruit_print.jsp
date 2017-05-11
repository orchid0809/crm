<%--
  Created by IntelliJ IDEA.
  User: orchid0809
  Date: 2017/3/15
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="PrintHTML" style="background-color: white;border:1px solid red;height:100%;width:100%;background-image:static/images/logo.jpg ">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="height: 25px; text-align: center; font-weight: bold; font-size: 30px;">飞龙信息部加盟热线：18770753385   有效期：${pd.PUBLISH_TIME}~${pd.DEADLINE_TIME}</td>
        </tr>
    </table>
    <table style="width: 100%; border: solid 1px black; border-collapse: collapse; table-layout: fixed; margin-top: 5px;;height:80%" id="Print_OsaledInformation">
        <thead>

        <tr>
            <th style="width: 10%; font-size: 30px; text-align: center; border: 1px solid black; border-right: 0px" >
                ${pd.ENTERPRISE_NAME}
            </th>
            <th style="width: 15%; font-size: 30px; text-align: center; border: 1px solid black;">
                ${pd.ENTERPRISE_ADDRESS}
            </th>
        </tr>

        </thead>
        <tbody>
        <tr>
            <td style="font-size: 80px; text-align: center; border: 1px solid black;" colspan="2">

            <c:if test="${pageDatas != null}">
                <c:forEach items="${pageDatas}" var="var" varStatus="vs">
                    ${var.RECRUIT_POSITION}:${var.RECRUIT_CNT}:${var.POSITION_REQUIRE}<br>
                </c:forEach>
             </c:if>

            </td>

        </tr>

        <tr>
            <td style="font-size: 30px; text-align: center; border: 1px solid black;" colspan="2">
                ${pd.CONTACT_PHONE}
            </td>

        </tr>
        </tbody>

    </table>


</div>
</body>
</html>
