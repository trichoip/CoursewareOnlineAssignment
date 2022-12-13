<%-- 
    Document   : update
    Created on : Dec 13, 2022, 9:52:48 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="<%=request.getContextPath()%>/ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/ckeditor/jquery-3.6.1.min.js" type="text/javascript"></script>
    </head>
    <body>
        <c:if test="${empty sessionScope.LIST_CATEGORY}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <a href="HomeServlet">home page</a>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="${requestScope.DETAIL_COURSE.id}" />
            <input type="hidden" name="Search" value="${param.Search}" />
            title: <input type="text" name="title" value="${requestScope.DETAIL_COURSE.title}"/> <br>
            short_content: <textarea name="short_content" id="editor1" rows="" cols="" style="width: 820px;height: 175px"  >${requestScope.DETAIL_COURSE.short_content}</textarea> <br>
            content: <textarea name="content" id="editor" rows="" cols="" style="width: 820px;height: 175px"/>${requestScope.DETAIL_COURSE.content}</textarea>
        category   
        <select name="category_id">
            <c:forEach  var="category" items="${sessionScope.LIST_CATEGORY}">
                <option value="${category.id}">${category.code}</option>
            </c:forEach>
        </select>
        <input type="submit" value="Update" name="action"/>
    </form>

    ${requestScope.MESSAGE}

    <script type="text/javascript">
        CKEDITOR.replace('editor');
        CKEDITOR.replace('editor1');
    </script>
</body>
</html>
