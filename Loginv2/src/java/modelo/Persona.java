/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author mateo
 */
public class Persona {
    private int id;
    private String correo;
    private String pass;

    
    public Persona(){}
    
    public Persona(String correo, String pass){
        this.correo = correo;
        this.pass = pass;
       
    }

    public void setId(int id) {
        this.id = id;
    }


  
    
    
    
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getCorreo() {
        return correo;
    }

    public int getId() {
        return id;
    }

    public String getPass() {
        return pass;
    }
}
