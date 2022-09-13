/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import Config.Conexion;
import interfaces.Auth;
import com.mysql.jdbc.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author mateo
 */
public class PersonaDao implements Auth {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public int validar(Persona per) {
        int r = 0;

        String sql = "SELECT * FROM users WHERE correo=? AND password=?";
        try {
            con = (Connection) cn.getConnection();
            ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, per.getCorreo());
            ps.setString(2, per.getPass());
            rs = (ResultSet) ps.executeQuery();

            while (rs.next()) {
                r += 1;
                per.setCorreo(rs.getString("correo"));
                per.setPass(rs.getString("password"));
            }

            if (r == 1) {
                return 1;
            } else {
                return 0;
            }
        } catch (SQLException e) {
        }

        return 0;
    }

}
