<%-- 
    Document   : Showmark
    Created on : Jul 7, 2022, 8:51:27 PM
    Author     : ASUS
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Show Mark</title>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />


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
                <td>Grade report for Nguyễn Thị Thu Linh (HE151525)</td>
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
                                                                    <a href="">${s.subname} </a>(${s.subcode})</br>                                
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
                                            <tr>
                                                <td rowspan="3">Assignment</td>
                                                <td>Assignment 1</td>
                                                <td>15.0 %</td>
                                                <td>
                                                    <c:if test="${requestScope.mark.ass1 == 0}">
                                                    </c:if>  
                                                    <c:if test="${requestScope.mark.ass1 != 0}">
                                                        ${requestScope.mark.ass1}
                                                    </c:if>  
                                                </td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <td>Assignment 2</td>
                                                <td>15.0 %</td>
                                                <td>
                                                    <c:if test="${requestScope.mark.ass2 == 0}">
                                                    </c:if>  
                                                    <c:if test="${requestScope.mark.ass2 != 0}">
                                                        ${requestScope.mark.ass2}
                                                    </c:if>  
                                                </td>
                                                <td></td>
                                            </tr>


                                            <tr>
                                                <td>Total</td>
                                                <td>30.0 %</td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <td rowspan="4">Progress test</td>
                                                <td>Progress test 1</td>
                                                <td>10.0 %</td>
                                                <td>
                                                    <c:if test="${requestScope.mark.lab1 == 0}">
                                                    </c:if>  
                                                    <c:if test="${requestScope.mark.lab1 != 0}">
                                                        ${requestScope.mark.lab1}
                                                    </c:if>  
                                                </td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <td>Progress test 2</td>
                                                <td>10.0 %</td>
                                                <td>
                                                    <c:if test="${requestScope.mark.lab2 == 0}">
                                                    </c:if>  
                                                    <c:if test="${requestScope.mark.lab2 != 0}">
                                                        ${requestScope.mark.lab2}
                                                    </c:if>  
                                                </td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <!--                                                <td>Progress test 3</td>
                                                                                                <td>10.0 %</td>-->
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <td>Total</td>
                                                <td>30.0 %</td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <td rowspan="2">Practical Exam</td>
                                                <td>Practical Exam</td>
                                                <td>20.0 %</td>
                                                <td>
                                                    <c:if test="${requestScope.mark.pe == 0}">
                                                    </c:if>  
                                                    <c:if test="${requestScope.mark.pe != 0}">
                                                        ${requestScope.mark.pe}
                                                    </c:if>  
                                                </td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <td>Total</td>
                                                <td>20.0 %</td>
                                                <td></td>
                                                <td></td>
                                            </tr>


                                            <tr>
                                                <td rowspan="2">Final Exam</td>
                                                <td>Final Exam</td>
                                                <td>20.0 %</td>
                                                <td>
                                                    <c:if test="${requestScope.mark.fe == 0}">
                                                    </c:if>  
                                                    <c:if test="${requestScope.mark.fe != 0}">
                                                        ${requestScope.mark.fe}
                                                    </c:if>  
                                                </td>
                                                <td></td>
                                            </tr>

                                            <tr>
                                                <td>Total</td>
                                                <td>20.0 %</td>
                                                <td></td>
                                                <td></td>
                                            </tr>

                                        </tbody>

                                        <tfoot>
                                            <tr>
                                                <td rowspan="2">Course total</td>
                                                <td>Average</td>
                                                <td colspan="3"></td>
                                            </tr>

                                            <tr>
                                                <td>Status</td>
                                                <td colspan="3">
                                                    <font color="Green">Pass</font>
                                                    <font color="Red">Not Pass</font>
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
