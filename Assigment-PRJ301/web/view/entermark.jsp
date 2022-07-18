<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        .a a{
            border-radius:5px;
            padding: 5px;
            background-color: #F6A7C1;
            color: black;
            padding-left: 25px;
        }
        th{
            background-color: #F6A7C1;
            padding: 10px;
            font-size: 25px;
        }
        .b {
            font-size: 20px;
            padding-left: 40px;
        }
        .c td{
            text-align: center;
            font-size: 20px;
        }
        .c{
            padding-top: 50px;
        }
        .d{
            padding-top: 50px;
        }
        .c a{
            border-radius: 5px;
            background-color: #F6A7C1;
            font-size: 25px;
            padding: 5px;
        }

    </style>
    <body>
        <div>
            <h1>Student's Transcript</h1>

        </div>
        <div class="a"  >
            <p><a href="" >Home</a> |  <a>  Show Mark</a></p></div>  
    </div> 
    <div class="d">
        <table style="width: 100%">
            <thead><tr><th>TERM</th><th>COURSE</th><th>GROUP</th></tr></thead>
            <tbody>
                <tr> 
                    <td class="b"><div><table>
                                <tr>
                                </tr>

                            </table></div></td>                   
                    <td class="b"><div><table>
                                   <tr> 
                            <td>
                                <c:forEach items="${requestScope.subject}" var="s">                               
                                    <a href="group?id=${s.subid}">${s.subname} </a>(${s.subcode})</br>                                
                                </c:forEach>
                            </td>
                        </tr></table></div></td>
                    <td class="b"><div><table>
                            <tr>                       
                            <c:forEach items="${requestScope.groups}" var="g">                        
                                <td>
                                    <a href="student?id=${g.gid}">${g.gname}</a>   
                                </td>                         
                            </c:forEach>                            
                        </tr>

                            </table></div></td>

                </tr>
            </tbody>
        </table>
    </div> 
    
                

                             
                                
                                </body>
                                </html>
