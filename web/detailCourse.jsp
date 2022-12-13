<%-- 
    Document   : detailCourse
    Created on : Dec 12, 2022, 10:00:33 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${empty sessionScope.LIST_CATEGORY}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <a href="HomeServlet">home page</a>
        <a href="create.jsp">create</a>

        <form action="MainController">
            <input type="text" name="Search" value="" />
            <input type="submit" value="Search" name="action" />
        </form>

        <c:if test="${not empty sessionScope.LIST_CATEGORY}">
            <c:forEach var="category" items="${sessionScope.LIST_CATEGORY}">
                <a href="MainController?action=GetCourseByCategory&id=${category.id}">${category.name}</a> | 
            </c:forEach>
        </c:if><br>
        <b> title: ${requestScope.DETAIL_COURSE.title}</b><br>
        content:   ${requestScope.DETAIL_COURSE.content}

    </body>
</html>
