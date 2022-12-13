<%-- 
    Document   : index
    Created on : Dec 12, 2022, 8:19:24 PM
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
        <a href="HomeServlet">home page</a>
        <a href="create.jsp">create</a>
        <a href="category.jsp">category</a>

        <form action="MainController">
            <input type="text" name="Search" value="" />
            <input type="submit" value="Search" name="action" />
        </form>

        <c:if test="${empty sessionScope.LIST_CATEGORY}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <c:if test="${not empty sessionScope.LIST_CATEGORY}">
            <c:forEach var="category" items="${sessionScope.LIST_CATEGORY}">
                <a href="MainController?action=GetCourseByCategory&id=${category.id}">${category.name}</a> | 
            </c:forEach>
        </c:if><br>


        <c:if test="${not empty requestScope.LIST_COURSE}">
            <table border="1">
                <thead>
                    <tr> 
                        <th>title</th>
                        <th>modified_date</th>
                        <th>short_content</th>  
                        <th>update</th>  
                        <th>delete</th>  

                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="course" items="${requestScope.LIST_COURSE}">
                    <form action="MainController">
                        <tr>
                            <td><a href="MainController?action=Detail&id=${course.id}">${course.title}</a></td>
                            <td>${course.modified_date}</td>
                            <td>${course.short_content}</td>
                        <input type="hidden" name="id" value="${course.id}" />
                        <input type="hidden" name="Search" value="${param.Search}" />
                        <td><a href="MainController?action=Detail&id=${course.id}&check=update&Search=${param.Search}">Update</a></td>
                        <td><input type="submit" value="Delete" name="action" /></td>
                        </tr>
                    </form>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    ${requestScope.MESSAGE}

</body>
</html>
