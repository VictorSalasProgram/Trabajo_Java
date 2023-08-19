/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author uSer
 */
public class Oradores {
    private int idOrador;
    private String nombreOrador;
    private String apellidoOrador;
    private String temaOrador;
    
    public int getIdOrador(){
        return idOrador;
    }
    public void setIdOrador(int idNuevo){
        this.idOrador = idNuevo;
    }
    
    public String getNombreOrador(){
        return nombreOrador;
    }
    public void setNombreOrador(String nombreNuevo){
        this.nombreOrador = nombreNuevo;
    }
    
    public String getApellidoOrador(){
        return apellidoOrador;
    }
    public void setApellidoOrador(String apellidoNuevo){
        this.apellidoOrador = apellidoNuevo;
    }
    public String getTemaOrador(){
        return temaOrador;
    }
    public void setTemaOrador(String nuevoTema){
        this.temaOrador = nuevoTema; 
    }
}
