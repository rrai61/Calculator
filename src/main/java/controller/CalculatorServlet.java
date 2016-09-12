/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CalcService;

/**
 *
 * @author ritu
 */
@WebServlet(name = "CalculatorServlet", urlPatterns = {"/calculator"})
public class CalculatorServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        CalcService service = new CalcService();
        String calculatedResult = "Unknown";

        String key = request.getParameter("shape");
        
        Shapes shape = Shapes.valueOf(key);
        
        switch(shape){
            case RECTANGLE:
                String length = request.getParameter("length");
                String width = request.getParameter("width");
                if(length.isEmpty()||width.isEmpty()){
                   calculatedResult = "Unknown";
                }
                else{calculatedResult = service.calculateAreaOfRectangle(length, width);}
                request.setAttribute("rectangleMsg", calculatedResult);
                break;
            case CIRCLE: 
                String radius = request.getParameter("radius");
                if(radius.isEmpty()){
                    calculatedResult = "Unknown";
                }
                else{calculatedResult = service.calculateAreaOfCircle(radius);}           
                request.setAttribute("circleMsg", calculatedResult);
                break;
            case TRIANGLE: 
                String side1 = request.getParameter("side1");
                String side2 = request.getParameter("side2");
                if(side1.isEmpty()||side2.isEmpty()){
                   calculatedResult = "Unknown";
                }
                else{calculatedResult = service.calculateHypotenuseOfTriangle(side1, side2);}
                request.setAttribute("triangleMsg", calculatedResult);
                break;
        }
        
        
        RequestDispatcher view = request.getRequestDispatcher("/webCalculatorsHomepage.jsp");
        view.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
