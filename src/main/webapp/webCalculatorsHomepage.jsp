<%-- 
    Document   : webCalculatorsHomepage
    Created on : Sep 7, 2016, 9:00:14 PM
    Author     : ritu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main.css">
        <title>Web Calculators</title>
    </head>
    <body>
        <div id="headContainer">
            <h1 id="heading">WEB CALCULATORS</h1>
        </div>
        <form id="recForm" name="recForm" method="POST" action="calculator">
            <input class="textbox" type="hidden" name="shape" value="RECTANGLE"/>
            <div class="container">
                <div class="inside">
                    <h3 class="titles">Area of a Rectangle</h3><br>
                    <img class="shape" src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Rectangle_Geometry_Vector.svg/2000px-Rectangle_Geometry_Vector.svg.png" alt="RECTANGLE SHAPE"/>
                    <br>
                    <table class="inputs">
                        <tr>
                            <td>Enter Length:</td>
                            <td><input class="textbox" type="text" name="length"/></td>
                        </tr>
                        <tr>
                            <td>Enter Width:</td>
                            <td><input class="textbox" type="text" name="width"/></td>
                        </tr>
                    </table><br>
                    <input id="submitValues" name="submitValues" class="btn" type="submit" value="Get Area">
                </div>
                <p class="res">AREA = ${rectangleMsg}</p>
            </div><br>
        </form>
            
        <form id="cirForm" name="cirForm" method="POST" action="calculator">
            <input class="textbox" type="hidden" name="shape" value="CIRCLE"/>
            <div class="container">
                <div class="inside">
                    <h3 class="titles">Area of a Circle</h3><br>
                    <img class="shape" src="http://www.media4mathplus.com/MathClipArt/ClipArt/MathClipArt--Circle.png" alt="CIRCLE SHAPE"/>
                    <br>
                    <table class="inputs">
                        <td>Enter Radius:</td>
                        <td><input class="textbox" type="text" name="radius"/></td>
                    </table><br>
                    <input id="submitRadius" class="btn" name="submitRadius" type="submit" value="Get Area">
                    <p class="res">AREA = ${circleMsg}</p>
                </div>
            </div><br>
        </form>
        
        <form id="triForm" name="triForm" method="POST" action="calculator">
            <input class="textbox" type="hidden" name="shape" value="TRIANGLE"/>
            <div class="container">
                <div class="inside">
                    <h3 class="titles">Hypotenuse of a Triangle</h3><br>
                    <img class="shape" src="https://vt-s3-files.s3.amazonaws.com/uploads/problem_question_image/image/16340/13.png" alt="TRIANGLE SHAPE"/>
                    <br>
                    <table class="inputs">
                        <tr>
                            <td>Enter length of Side 1:</td>
                            <td><input class="textbox" type="text" name="side1"/></td>
                        </tr>
                        <tr>
                            <td>Enter length of Side 2:</td>
                            <td><input class="textbox" type="text" name="side2"/></td>
                        </tr>
                    </table><br>
                    <input id="submitSides" name="submitSides" class="btn" type="submit" value="Get Hypotenuse Length">
                    <p class="res">HYPOTENUSE = ${triangleMsg} </p>
                </div>
            </div>
        </form><br><br>
        
        <form id="listForm" name="listForm" method="POST" action="list">
        <div class="container">
            <div class="inside">
                <h3 class="titles">Calculations List</h3>
                <input name="shwListBtn" class= "btn" type="submit" value="Show List"/>
                <ul>
                <c:forEach var="item" items="${calculationsList}">
                    <li>${item}</li>
                </c:forEach>
                </ul>
            </div>
        </div>
        </form>
    </body>
</html>
