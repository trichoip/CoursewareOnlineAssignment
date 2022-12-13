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
    <body>
        <c:if test="${empty sessionScope.LIST_CATEGORY}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <a href="HomeServlet">home page</a>
        <table border="1">
            <thead>
                <tr>
                    <th>id</th>
                    <th>code</th>
                    <th>name</th>
                    <th>update</th>
                    <th>delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="category" items="${sessionScope.LIST_CATEGORY}">
                <form action="MainController" method="POST">
                    <tr>
                        <td><input type="text" name="id" value="${category.id}" readonly="readonly" /></td>
                        <td><input type="text" name="code" value="${category.code}"  required=""/></td>
                        <td><input type="text" name="name" value="${category.name}"  required=""/></td>
                        <td><input type="submit" value="UpdateCategory" name="action" /> </td>
                        <td><input type="submit" value="DeleteCategory" name="action" /> </td>
                    </tr>
                </form>
            </c:forEach>
        </tbody>
    </table>


    creat category:
    <form action="MainController">
        code <input type="text" name="code" value="" /><br>
        name <input type="text" name="name" value="" /><br>
        <input type="submit" value="CreateCategory" name="action" />
    </form>

    ${requestScope.MESSAGE}
</body>
</html>
