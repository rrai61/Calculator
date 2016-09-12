/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ritu
 */
public class CalcService {
    
    public String calculateAreaOfRectangle(String length, String width){
        
        double len = Double.parseDouble(length);
        double wid = Double.parseDouble(width);
        
        double a = len * wid;
        
        String area = Double.toString(a);
        
        return area;
    }
    
    public String calculateAreaOfCircle(String radius){
        
        double rad = Double.parseDouble(radius);
        
        double a = Math.PI * (rad*rad);
        
        String area = Double.toString(a);
        
        return area;
    }
    
    public String calculateHypotenuseOfTriangle(String side1, String side2){
        double s1 = Double.parseDouble(side1);
        double s2 = Double.parseDouble(side2);
        
        double h = Math.sqrt((s1 * s1) + (s2 * s2));
        
        String hypotenuse = Double.toString(h);
        
        return hypotenuse;
    }
    
}
