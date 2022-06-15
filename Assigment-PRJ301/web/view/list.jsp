<%-- 
    Document   : list
    Created on : Jun 15, 2022, 10:00:19 AM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="../css/list.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
      
       
        img{
            width: 100px;
            height: 100px;
        }
        .than{
            text-align: center;
            font-size: 20px;
        }
        .first{
            background-color: #04BFAD;
           
            
        }
        
       
    </style>
    <body>
       
        <h2>Multiple Col Elements</h2>
        <p>Add multiple col elements in the colgroup:</p>
    
        <table style="width: 100%;"  >
   <thead>
        <tr class="first">
            <th>INDEX</th>
            <th>CODE</th>
            <th>MEMBER</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DOB</th>
            <th>IMG</th>
            <th>ADDRESS</th>
        </tr>
    </thead>
    <c:forEach items="${requestScope.students}" var="s">
        <tbody>
            <tr class="than">
                <td>${s.sid}</td>
                <td>${s.code}</td>
                <td>${s.smember}</td>
                <td>${s.sname}</td>
                <td>${s.sgender}</td>
                <td>${s.sdob}</td>
                <td><img src="${s.simg}" alt=""/></td>
                <td>${s.saddress}</td>

            </tr>
        </tbody>
    </c:forEach>
</table>
</body>

</html>
