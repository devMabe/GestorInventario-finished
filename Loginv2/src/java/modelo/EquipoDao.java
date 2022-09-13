/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import Config.Conexion;
import interfaces.EquiposInterface;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mateo
 */
public class EquipoDao implements EquiposInterface {

    Conexion cn = new Conexion();
    Connection con;

    PreparedStatement ps;
    ResultSet rs;
    Equipo e = new Equipo();

    @Override
    public List listar() {
        ArrayList<Equipo> list = new ArrayList<>();
        String sql = "SELECT * FROM equipos";
        try {
            con = cn.getConnection();
            ps = (PreparedStatement) con.prepareStatement(sql);
            rs = (ResultSet) ps.executeQuery();

            while (rs.next()) {
                Equipo equipo = new Equipo();
                equipo.setId(Integer.parseInt(rs.getString("id")));
                equipo.setNombre(rs.getString("nombre"));
                equipo.setSerial(rs.getString("serial"));
                equipo.setModelo(rs.getString("modelo"));
                equipo.setMarca(rs.getString("marca"));

                list.add(equipo);
            }
        } catch (SQLException error) {
            System.err.println("Error" + error);
        }

        return list;

    }

    @Override
    public Equipo list(int id) {
         ArrayList<Equipo> list = new ArrayList<>();
        String sql = "SELECT * FROM equipos WHERE id=" + id;
        try {
            con = cn.getConnection();
            ps = (PreparedStatement) con.prepareStatement(sql);
            rs = (ResultSet) ps.executeQuery();

            while (rs.next()) {
                e.setId(rs.getInt("id"));
                e.setNombre(rs.getString("nombre"));
                e.setSerial(rs.getString("serial"));
                e.setModelo(rs.getString("modelo"));
                e.setMarca(rs.getString("marca"));
                list.add(e);
            }
        } catch (SQLException error) {
            System.err.println("Error" + error);
        }

        return e;
       
    }

    @Override
    public boolean add(Equipo equipo) {

        String sql = "INSERT INTO equipos (nombre,serial, modelo,marca) VALUES(?,?,?,?)";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, equipo.getNombre());
            ps.setString(2, equipo.getSerial());
            ps.setString(3, equipo.getModelo());
            ps.setString(4, equipo.getMarca());
            ps.executeUpdate();
        } catch (SQLException error) {
            System.out.println("Error" + error);
        }
        return false;
    }

    @Override
    public boolean edit(Equipo e) {
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "DELETE FROM equipos WHERE id=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, String.valueOf(id));
            ps.executeUpdate();
            
        } catch (SQLException error) {
            System.out.println("Error" + error);
        }
        return false;
    }

    @Override
    public boolean update(Equipo equipo) {
        String sql = "UPDATE  equipos SET nombre = ?, serial = ?, modelo = ?, marca=? WHERE  id="+equipo.getId();

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, equipo.getNombre());
            ps.setString(2, equipo.getSerial());
            ps.setString(3, equipo.getModelo());
            ps.setString(4, equipo.getMarca());
            ps.executeUpdate();
        } catch (SQLException error) {
            System.out.println("Error" + error);
        }
        return false;
    }

}
