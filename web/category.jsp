<%-- 
    Document   : category
    Created on : Dec 13, 2022, 10:47:19 AM
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
            </div>
        </nav>
        <table border="1" class="table table-striped table-dark" style="width: 95%;margin: 0 auto;">
            <thead>
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">code</th>
                    <th scope="col">name</th>
                    <th scope="col">update</th>
                    <th scope="col">delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="category" items="${sessionScope.LIST_CATEGORY}">
                <form action="MainController" method="POST">
                    <tr>
                        <td scope="row"><input type="text" name="id" value="${category.id}" readonly="readonly" /></td>
                        <td scope="row"><input type="text" name="code" value="${category.code}"  required=""/></td>
                        <td scope="row"><input type="text" name="name" value="${category.name}"  required=""/></td>
                        <td scope="row"><input type="submit" value="UpdateCategory"style="background: #00f" name="action" /> </td>
                        <td scope="row" ><input type="submit" value="DeleteCategory"style="background: red" name="action" /> </td>
                    </tr>
                </form>
            </c:forEach>
        </tbody>
    </table>


    <div> 
        create category:
        <form action="MainController">
            code <input type="text" name="code" value="" /><br>
            name <input type="text" name="name" value="" /><br>
            <input type="submit" value="CreateCategory" name="action" />
        </form>
    </div>

    ${requestScope.MESSAGE}
</body>
</html>
