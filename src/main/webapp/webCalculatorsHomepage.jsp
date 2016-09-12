<%-- 
    Document   : webCalculatorsHomepage
    Created on : Sep 7, 2016, 9:00:14 PM
    Author     : ritu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <%
                        Object obj = request.getAttribute("rectangleMsg");
                        String msg = "Unknown";
                        if(obj != null) {
                            msg = obj.toString();
                        }
                    %>
                </div>
                <p class="res">AREA = <% out.println(msg);%> </p>
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
                    <%
                        Object obj2 = request.getAttribute("circleMsg");
                        String msg2 = "Unknown";
                        if(obj2 != null) {
                            msg2 = obj2.toString();
                        }
                    %>
                    <p class="res">AREA = <% out.println(msg2);%> </p>
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
                    <%
                        Object obj3 = request.getAttribute("triangleMsg");
                        String msg3 = "Unknown";
                        if(obj3 != null) {
                            msg3 = obj3.toString();
                        }
                    %>
                    <p class="res">HYPOTENUSE = <% out.println(msg3);%> </p>
                </div>
            </div>
        </form>
    </body>
</html>
