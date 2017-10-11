<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: liugangping
  Date: 2017/10/5
  Time: 下午1:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    Date date = new Date();
    request.setAttribute("date",date);
  %>
  <c:set var="number" value="11" scope="request"/>
  <fmt:formatNumber type="number" value="${number}" minFractionDigits="2"/>
  <fmt:formatNumber type="number" value="3.14159" maxFractionDigits="2"/>
  <fmt:formatDate value="${date}" pattern="yy-MM-dd HH:mm:ss"/>
  <jsp:forward page="second.jsp?name=liugangping"/>
  </body>
</html>
