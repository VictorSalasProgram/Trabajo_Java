/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Modelo.Oradores;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author uSer
 */
public class oradoresDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    public List listarOradores(){
        ArrayList<Oradores> lista = new ArrayList<>();
        String sql = "SELECT * FROM tabla_oradores";
        
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs =  ps.executeQuery();
            while (rs.next()){
                Oradores o = new Oradores();
                o.setIdOrador(rs.getInt("idOrador"));
                o.setNombreOrador(rs.getString("nombreOrador"));
                o.setApellidoOrador(rs.getString("apellidoOrador"));
                o.setTemaOrador(rs.getString("temaOrador"));
                
                lista.add(o);
            }
            
            
        } catch (Exception e)  {
                System.out.println("Algo salio mal con la consulta a la base de datos" + e);
        
        }
        
        return lista;
    }
}
