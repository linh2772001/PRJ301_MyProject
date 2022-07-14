<%-- 
    Document   : group
    Created on : Jun 18, 2022, 5:20:40 PM
    Author     : ASUS
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
        <body>
       
        <h2>Multiple Col Elements</h2>
        <p>Add multiple col elements in the colgroup:</p>
    
        <table style="width: 100%;"  >
   <thead>
        <tr class="first">
            <th>gid</th>
            <th>gname</th>

        </tr>
    </thead>
    <c:forEach items="${requestScope.groups}" var="g">
        <tbody>
            <tr >
                <td>${g.gid}</td>
                <td><a href="student/list?gid=${g.gid}" >${g.gname}<a></td>
                

            </tr>
        </tbody>
    </c:forEach>
</table>
    </body>
</html>
