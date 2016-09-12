<%-- 
    Document   : webRectangleCalculatorLab1
    Created on : Sep 12, 2016, 4:37:24 PM
    Author     : ritu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main.css">
        <title>Web Rectangle Calculator Lab-1</title>
    </head>
    <body>
        <div id="headContainer">
            <h1 id="heading">RECTANGLE CALCULATOR [lab-1]</h1>
        </div>
        <form id="recForm" name="recForm" method="POST" action="lab1calculator">
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
            </div><br>
        </form>
    </body>
</html>
