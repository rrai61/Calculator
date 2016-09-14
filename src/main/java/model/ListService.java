/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ritu
 */
public class ListService {
    private String userName = "Ritu";
    private List<String> calculationsList;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public List<String> getCalculationsList() {
        return calculationsList;
    }

    public ListService() {
        calculationsList = new ArrayList<>();
        calculationsList.add("Area of a Rectangle");
        calculationsList.add("Area of a Circle");
        calculationsList.add("Hypotenuse of a Triangle");
    }
    
    
}
