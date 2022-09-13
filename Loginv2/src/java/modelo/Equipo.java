/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author mateo
 */
public class Equipo {

    private int id;
    private String nombre;
    private String serial;
    private String modelo;
    private String marca;

    public Equipo() {
    }

    public Equipo(String nombre, String serial, String modelo, String marca) {

        this.nombre = nombre;
        this.serial = serial;
        this.modelo = modelo;
        this.marca = marca;
    }

    public Equipo(int id, String nombre, String serial, String modelo, String marca) {
        this.id = id;
        this.nombre = nombre;
        this.serial = serial;
        this.modelo = modelo;
        this.marca = marca;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
    
    
}
