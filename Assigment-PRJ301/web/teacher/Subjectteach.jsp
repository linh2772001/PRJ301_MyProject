<%-- 
    Document   : group
    Created on : Jul 6, 2022, 11:35:40 PM
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
        <div class="e">
            <h2> Student Mark  Report</h2>       
        </div>

        <div class="ee">
           
            <div> 
                <p>
                    <c:if test="${sessionScope.account != null}">
                    <div class="aaaaa">
                        <p >
                            <a href="home">Home</a>
                            |<a href="">${sessionScope.account.displayname}</a>
                            | <a href="logout">LogOut</a>             
                        </p>
                    </div>
                </c:if>  
                </p>
            </div>   

        </div>            

     


        <div class="lienket">
            <table>               
                <tr >
                    <th class="c">Campus</th>                     
<!--                    <th class="c">Department</th>-->
                    <th class="d">Course</th>
<!--                    <th class="f">Group</th>                                         -->
                </tr>    

                <td style="vertical-align:top">University</td>
               
                <td style="vertical-align:top">
                    <table>
                        <tr> 
                            <td>
                                <c:forEach items="${requestScope.searchte}" var="s">
                            <tr>
                                <td>
                                    <a href="groupteacher?lid=${requestScope.lid}&subid=${s.subid}"> ${s.subname}</a>(${s.subcode}) 
                                </td>
                            </tr>

                        </c:forEach>
                </td>
                </tr>
            </table>
        </td>
    </table>
</div>

<div style="height: 50px;"></div>

<table width="100%" style="border: 1px solid transparent;" class="lienket">


</table>



</body>
<style>
    .a{
        width: 120px;
        height: 140px;
        margin-left: 10px;
        margin-right: 10px;
        margin-bottom: 0px;
    }
    .b
    {
        width: 50px;
        height: 50px;
        margin-left: 25px;
    }
    .c{
        width: 110px;
        text-align: left;
    }
    .d{
        width: 500px;
        text-align: left;
    }
    .f{
        width: 380px;
        text-align: left;
    }
    th{
        background-color:#F6A7C1;
        display: table-cell;
    }
    .lienket a{
        text-decoration: none
    }
    .lienket
    {
        margin: 3%;
        flex: 20%;
        display: flex;
        justify-content: center;
    }
    .index
    {
        width: 60px;
    }
    .aa{
        text-align:right;
        margin: 4%;
    }
    .bb{
        background-color: skyblue;
    }
    input{
        border-radius: 30px;
    }
    .lienket a{
        text-decoration: none
    }

    .e{
        margin-left:  3.2%;
        display: flex;
        justify-content: left;
        font-size: 20px;
    }
    .ee{
        margin: 3.4%;
        display: flex;
        justify-content: left;
        background-color: #f5f5f5;


    }
    p{
        font-size: 25px;
    }

    .ee a{
        text-decoration: none;
        color: #337ab7;
    }
    .ee p{
        padding-left: 15px;
        font-family: Times New Roman;
        font-size: 25px;
    }
    .cc{
        font-family: Times New Roman;
        font-size: 25px;
        color: #776;
        margin-left: 3.7%;
        text-align: left;
    }
</style>
</html>
