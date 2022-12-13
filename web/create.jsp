<%-- 
    Document   : create
    Created on : Dec 12, 2022, 10:59:50 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>create page</title>
        <script src="<%=request.getContextPath()%>/ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/ckeditor/jquery-3.6.1.min.js" type="text/javascript"></script>

    </head>
    <body>
        <c:if test="${empty sessionScope.LIST_CATEGORY}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <a href="HomeServlet">home page</a>
        <form action="MainController" method="post">
            <input type="hidden" name="Search" value="" />
            title: <input type="text" name="title" value=""/> <br>
            short_content: <textarea name="short_content" id="editor1" rows="" cols="" style="width: 820px;height: 175px"  ></textarea> <br>
            content: <textarea name="content" id="editor" rows="" cols="" style="width: 820px;height: 175px"/></textarea>
        category   
        <select name="category_id">
            <c:forEach  var="category" items="${sessionScope.LIST_CATEGORY}">
                <option value="${category.id}">${category.code}</option>
            </c:forEach>
        </select>
        <input type="submit" value="Create" name="action"/>
    </form>

    ${requestScope.MESSAGE}

    <script type="text/javascript">
        CKEDITOR.replace('editor');
        CKEDITOR.replace('editor1');
    </script>
</body>
</html>
