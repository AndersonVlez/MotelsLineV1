/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author Cleyber
 */
public class Habitaciones {
    private int id;
    private String nombre;
    private int cantidad;
    private String descripcion;
    private double precio;
    private int cantidadHoras;
    private double horaAdicional;
    private double personaAdicional;
    
    public Habitaciones(){
    }
    
    public Habitaciones(int id, String nombre, int cantidad, String descripcion, double precio, int cantidadHoras, double horaAdicional, double personaAdicional){
        this.id = id;
        this.nombre = nombre;
        this.cantidad = cantidad;
        this.descripcion = descripcion;
        this.precio = precio;
        this.cantidadHoras = cantidadHoras;
        this.horaAdicional = horaAdicional;
        this.personaAdicional = personaAdicional;
    }
    
    public void setId(int id){
        this.id= id;
    }
    
    public int getId(){
        return id;
    }
    
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    
    public String getNombre(){
        return nombre;
    }
    
    public void setCantidad(int cantidad){
        this.cantidad = cantidad;
    }
    
    public int getCantidad(){
        return cantidad;
    }
    
    public void setDescripcion(String descripcion){
        this.descripcion = descripcion;
    }
    
    public String getDescripcion(){
        return descripcion;
    }
    
    public void setPrecio(double precio){
        this.precio = precio;
    }
    
    public double getPrecio(){
        return precio;
    }
    
    public void setCantidadHoras(int cantidadHoras){
        this.cantidadHoras = cantidadHoras;
    }
    
    public int getCantidadHoras(){
        return cantidadHoras;
    }
    
    public void setHoraAdicional(double horaAdicional){
        this.horaAdicional = horaAdicional;
    }
    
    public double getHoraAdicional(){
        return horaAdicional;
    }
    
    public void setPersonaAdicional(double personaAdicional){
        this.personaAdicional = personaAdicional;
    }
    
    public double getPersonaAdicional(){
        return personaAdicional;
    }
    
}
