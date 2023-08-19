/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author uSer
 */
public class Conexion {
    Connection c;
    public Conexion(){
    
        try{
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/conferencias","root","123456");
            
            
            
        } catch(Exception e){
        
            System.err.println("ha ocurrido un error" + e);
        }
    
    }
    public Connection getConnection(){
    return c;
    }
}
