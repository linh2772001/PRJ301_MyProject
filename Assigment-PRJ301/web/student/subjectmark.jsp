<%-- 
    Document   : viewmake
    Created on : Jul 17, 2022, 11:20:16 AM
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

     <style>

        th{
            background-color:#F6A7C1;
            display: table-cell;
        }
        .lienket a{
            text-decoration: none
        }
        .lienket
        {
            margin: 50px;
            flex: 20%;
            display: flex;
            font-size: 20px;
            justify-content: center;
        }

        .bb{
            background-color: green;
        }
        input{
            border-radius: 30px;
        }
        .lienket a{
            text-decoration: none
        }

        .e{
            margin-left:  20px;
            display: flex;
            justify-content: left;
            font-size: 20px;
        }
        .ee{
            margin: 20px;
            display: flex;


        }

        .ee a{
            border-radius:5px;
            padding: 5px;
            background-color: #F6A7C1;
            color: black;
            margin-bottom: 100px;
        }
        .ee p{
            padding-left: 15px;
            font-family: Arial;
            font-size: 20px;
        }
        .cc{
            font-size: 40px;
            color: black;
            text-align: center;

        }
        .dd{
            font-family: Times New Roman;
            font-size: 30px;
            color: #776;
            margin: 10px;
        }
        .ee1{
            margin-left: 1000px;
        }
        .ee1 a{
            border-radius:5px;
            padding: 5px;
            background-color: #F6A7C1;
            color: black;
           
        }
        .l{
            font-size: 25px;
            padding-left:60px;
            padding-top: 20px;
        }
    </style>

    <body>

        <div class="e">

            <h2>FPT University Academic Portal</h2>

        </div>



        <div class="ee">
      <!--        <c:if test="${sessionScope.account == null}">
                <div>
                    <p> <a href="home">Home</a>
                        | <a href="login">Login</a> </p>
                </div>
            </c:if>-->
          <div> 
                <p>
                    <c:if test="${sessionScope.account != null}">
                    <div class="aaaaa">
                        <p >
                            <a href="home">Home</a>
                                      
                        </p>
                    </div>
                </c:if>  
                </p>
            </div>   

        </div>    
            <div class="ee1"  >
                <p>
                    <c:if test="${sessionScope.account != null}">
                    <div class="aaaaa">
                        <p >
                         <a href="">${sessionScope.account.displayname}</a>
                        |<a href="logout">LogOut</a>             
                        </c:if></p></div>  
        </div>  
        <table class="l">
            <tr>
                <td>Grade report for ${sessionScope.students.sname} (${sessionScope.students.code})</td>
            </tr>
        </table>     




        <div >
            <div>                   
                <div class="lienket">
                    <table>
                        <tr>
                            <td valign='top'>                
                                <div class="cc">
                                    Select a term, course ...
                                </div>  
                                <table>
                                    <thead><tr><th>Term</th><th>Course</th></tr></thead>
                                    <tbody>
                                        <tr>                    
                                            <td class="c"><div><table><tr><td></td></tr></table></div></td>
                                            <td class="d"><div><table>
                                                        <tr>
                                                            <td>
                                                               <c:forEach items="${requestScope.subject}" var="s">                               
                                                                    <a  href="assessment?sid=${requestScope.sid}&subid=${s.subid}"  >${s.subname}</a>  (${s.subcode})</br>                                 
                                                                </c:forEach>

                                                            </td>
                                                        </tr>
                                                    </table></div></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td valign='top'>
                                <div>
                                    <table>
                                        <caption class="dd">... then see report</caption>

                                        <tr>
                                            <th>Grade category</th>
                                            <th>Grade item</th>
                                            <th>Weight</th>
                                            <th>Value</th>
                                            <th>Comment</th>
                                        </tr>

                                        <tbody>
                                            <c:forEach items="${requestScope.assessment}" var= "a">
                                            <tr>
                                               
                                                <td></td>
                                                <td>${a.aname}</td>
                                                <td>${a.weight}%</td>
                                                 <c:forEach items="${requestScope.exam}" var= "e">
                                               
                                                    <c:if test="${a.aname eq e.getAssessment().aname}">
                                                       <td> 
                                                           ${e.score} 
                                                       </td>
                                                        </c:if>
                                                      
                                                   
                                                </c:forEach>
                                                <td></td>
                                                
                                            </tr>
                                            </c:forEach>
                                        </tbody>

                                        <tfoot>
                                            <tr>
                                                <td rowspan="2">Course total</td>
                                                <td>Average</td>
                                                <td colspan="3">${requestScope.total}</td>
                                            </tr>

                                            <tr>
                                                <td>Status</td>
                                                <td colspan="3">
                                                    <c:if test="${requestScope.total >= 5}">
                                                        <font color="Green">Pass</font>
                                                    </c:if>
                                                    <c:if test="${requestScope.total < 5}">
                                                        <font color="Red">Not Pass</font>
                                                    </c:if>      
                                                    <c:if test="${requestScope.total == 5}">
                                                        <font color="Green">Study</font>
                                                    </c:if>    
                                                </td></tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </td>                    
                        </tr>
                    </table>

                </div>
            </div>
        </div>
    </body>
</html>