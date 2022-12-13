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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

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
                <form class="form-inline my-2 my-lg-0" action="MainController">
                    <input class="form-control mr-sm-2"  type="text" name="Search" value=""  placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Search" name="action" >Search</button>
                </form>
            </div>
        </nav>
        <br>
        <div style="text-align: center">
            <c:if test="${not empty sessionScope.LIST_CATEGORY}">
                <c:forEach var="category" items="${sessionScope.LIST_CATEGORY}">
                    <a href="MainController?action=GetCourseByCategory&id=${category.id}">${category.name}</a> |
                </c:forEach>
            </c:if><br><br><br> 
        </div>
        <div style="    width: 75%;
             margin-left: 200px;">
            <b> <h1> ${requestScope.DETAIL_COURSE.title}</h1></b><br>
              ${requestScope.DETAIL_COURSE.content}
        </div>
    </body>
</html>
