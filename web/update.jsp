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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    </head>
    <body>
        <c:if test="${empty sessionScope.LIST_CATEGORY or empty sessionScope.LOGIN_USER}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="HomeServlet">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <c:if test="${sessionScope.LOGIN_USER.roleID eq 'AD'}">
                        <li class="nav-item">
                            <a class="nav-link" href="create.jsp">Create course</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="category.jsp">Category Management</a>
                        </li>
                    </c:if>
                    <li class="nav-item">
                        <a class="nav-link" href="MainController?action=Logout">Logout</a>
                    </li>

                </ul>
            </div>
        </nav>


        <div style="    width: 75%;
             margin-left: 200px;">
            <form action="MainController" method="post">
                category   
                <select name="category_id">
                    <c:forEach  var="category" items="${sessionScope.LIST_CATEGORY}">
                        <option value="${category.id}">${category.code}</option>
                    </c:forEach>
                </select><br>
                    <input type="hidden" name="id" value="${requestScope.DETAIL_COURSE.id}" />
                <input type="hidden" name="Search" value="${param.Search}" />
                title: <input type="text" name="title" value="${requestScope.DETAIL_COURSE.title}" style="width: 99%"/> <br>
                short_content: <textarea name="short_content" id="editor1" >${requestScope.DETAIL_COURSE.short_content}</textarea> <br>
                content: <textarea name="content" id="editor" />${requestScope.DETAIL_COURSE.content}</textarea>
                <input type="submit" value="Update" name="action"/>
            </form>
        </div>

        ${requestScope.MESSAGE}

        <script type="text/javascript">
            CKEDITOR.replace('editor');
            CKEDITOR.replace('editor1');
        </script>
    </body>
</html>
