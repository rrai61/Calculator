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
    
    public final String calculateAreaOfRectangle(String length, String width){
        String area;
        
        if(length.isEmpty()||width.isEmpty()){
           area = "Error: Both Length and Width required to calculate area";
        }
        else{
            double len = Double.parseDouble(length);
            double wid = Double.parseDouble(width);

            double a = len * wid;

            area = Double.toString(a);
        }
        
        return area;
    }
    
    public final String calculateAreaOfCircle(String radius){
        String area;
        
        if(radius.isEmpty()){
            area = "Error: Radius required to calculate area";
        }
        else{
            double rad = Double.parseDouble(radius);

            double a = Math.PI * (rad*rad);

            area = Double.toString(a);
        }
        
        return area;
    }
    
    public final String calculateHypotenuseOfTriangle(String side1, String side2){
        String hypotenuse;
        if(side1.isEmpty()||side2.isEmpty()){
            hypotenuse = "Error: Both Side1 and Side2 required to calculate hypotenuse";
        }
        else{
            double s1 = Double.parseDouble(side1);
            double s2 = Double.parseDouble(side2);

            double h = Math.sqrt((s1 * s1) + (s2 * s2));

            hypotenuse = Double.toString(h);
        }
        return hypotenuse;
    }
    
}
