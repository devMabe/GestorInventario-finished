/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package interfaces;

import java.util.List;
import modelo.Equipo;

/**
 *
 * @author mateo
 */
public interface EquiposInterface {
    public List listar();
    public Equipo list(int id);
    public boolean add(Equipo e);
    public boolean update(Equipo e);
    public boolean edit(Equipo e);
    public boolean eliminar(int id);
}
