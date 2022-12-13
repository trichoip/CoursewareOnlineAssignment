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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <!--        <div class="home" style="display: flex">
                    <div class="home" style="display:">
                    <a href="HomeServlet"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Go-home.svg/2048px-Go-home.svg.png" alt="" style="width: 30px;text-decoration: none">
                        <h3 style="    margin-top: -8px;">home</h3></a>
                        </div>
                    <a href="create.jsp">create</a>
                    <a href="category.jsp">category</a>
        
                    <form action="MainController">
                        <input type="text" name="Search" value="" />
                        <input type="submit" value="Search" name="action" />
                    </form>
                </div>-->
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
            </c:if><br><br><br>  </div>

        ${requestScope.MESSAGE}

        <c:if test="${not empty requestScope.LIST_COURSE}">
            <table border="1" class="table table-striped table-dark" style="width: 95%;margin: 0 auto;">
                <thead>
                    <tr> 
                        <th scope="col">Title</th>
                        <th scope="col">Date</th>
                        <th scope="col">Short description</th>
                            <c:if test="${sessionScope.LOGIN_USER.roleID eq 'AD'}">
                            <th scope="col">update</th>  
                            <th scope="col">delete</th>  
                            </c:if>


                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="course" items="${requestScope.LIST_COURSE}">
                    <form action="MainController">
                        <tr>
                            <td scope="row"><a href="MainController?action=Detail&id=${course.id}">${course.title}</a></td>
                            <td scope="row">${course.modified_date}</td>
                            <td scope="row">${course.short_content}</td>
                        <input type="hidden" name="id" value="${course.id}" />
                        <input type="hidden" name="Search" value="${param.Search}" />
                        <c:if test="${sessionScope.LOGIN_USER.roleID eq 'AD'}">
                            <td scope="row"><a href="MainController?action=Detail&id=${course.id}&check=update&Search=${param.Search}">Update</a></td>
                            <td scope="row"><input type="submit" value="Delete" name="action" /></td>
                            </c:if>
                        </tr>
                    </form>
                </c:forEach>
            </tbody>
        </table>
    </c:if>


    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
