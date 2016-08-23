/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author Cleyber
 */
public class Reservas {
    private int id;
    private Date fecha;
    private Time hora;
    private int horasExtras;
    private int personasExtras;
    
    public Reservas(){
    }
    
    public Reservas(int id, Date fecha, Time hora, int horasExtras, int personasExtras){
        this.id = id;
        this.fecha = fecha;
        this.hora = hora;
        this.horasExtras = horasExtras;
        this.personasExtras = personasExtras;        
    }
    
    public void setId(int id){
        this.id = id;
    }
    
    public int getId(){
        return id;
    }
    
    public void setFecha(Date fecha){
        this.fecha = fecha;
    }
    
    public Date getFecha(){
        return fecha;
    }
    
    public void setHora(Time hora){
        this.hora = hora;
    }
    
    public Time getHora(){
        return hora;
    }
    
    public void setHorasExtras(int horasExtras){
        this.horasExtras = horasExtras;
    }
    
    public int getHorasExtras(){
        return horasExtras;
    }
    
    public void setPersonasExtras(int personasExtras){
        this.personasExtras = personasExtras;
    }
    
    public int getPersonasExtras(){
        return personasExtras;
    }
}
