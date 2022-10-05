package Decaf.Model;

import Decaf.Model.Bean;
import Decaf.Utils.MySQLConnection;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Dao {
    Connection conn;
    PreparedStatement pstm;
    CallableStatement cstm;
    ResultSet rs;

    public boolean saveEvaluacion(Bean AddE) {
        Bean save = null;
        try {
            conn = new MySQLConnection().getConnection();
            String query = "INSERT INTO Respuesta" +
                    "(Cliente, Escuela, Funcionalidad, Confiabilidad, Usabilidad, Rendiimiento, Mantenimiento, Portabilidad, Seguridad, Compatibilidad, Porcentaje, Fk_Encuestas)" +
                    " VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
            pstm = conn.prepareStatement(query);
            pstm.setString(1, AddE.getUser());
            pstm.setString(2, AddE.getSchool());
            pstm.setInt(3, AddE.getFuncionalidad());
            pstm.setInt(4, AddE.getConfiabilidad());
            pstm.setInt(5, AddE.getUsabilidad());
            pstm.setInt(6, AddE.getRendimiento());
            pstm.setInt(7, AddE.getMantenimiento());
            pstm.setInt(8, AddE.getPortabilidadmpT());
            pstm.setInt(9, AddE.getSeguridad());
            pstm.setInt(10, AddE.getCompatibilidad());
            pstm.setDouble(11, AddE.getPorcentaje());
            pstm.setInt(12, AddE.getFkEncuesta());
            return pstm.executeUpdate() == 1;
        } catch (SQLException e) {
            Logger.getLogger(Bean.class.getName())
                    .log(Level.SEVERE, "Error save", e);
            return false;
        } finally {
            closeConnections();
        }
    }

    public Bean locateEnc() {
        Bean encuesta = null;
        try {
            conn = new MySQLConnection().getConnection();
            String query = "SELECT * FROM recentEncuesta;";
            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            if (rs.next()){
                encuesta = new Bean();
                encuesta.setFkEncuesta(rs.getInt("idEncusta"));
                encuesta.setEncuesta(rs.getString("NomEncuestas"));
                encuesta.setOn(rs.getInt("OpenE"));
            }
        } catch (SQLException e) {
            Logger.getLogger(Dao.class.getName())
                    .log(Level.SEVERE, "Error findAll", e);
        } finally {
            closeConnections();
        }
        return encuesta;
    }

    public Bean locateEClien() {
        Bean porc = null;
        try {
            conn = new MySQLConnection().getConnection();
            String query = "SELECT * FROM recentEva;";
            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            if (rs.next()){
                porc = new Bean();
                porc.setPorcentaje(rs.getDouble("Porcentaje"));
                System.out.println(porc.getPorcentaje());
            }
        } catch (SQLException e) {
            Logger.getLogger(Dao.class.getName())
                    .log(Level.SEVERE, "Error findAll", e);
        } finally {
            closeConnections();
        }
        return porc;
    }

    public List<Bean> findAll(int encueActual) {
        List<Bean> all = new LinkedList<>();
        Bean al;
        try {
            conn = new MySQLConnection().getConnection();
            String query = "SELECT * FROM merequetenge;";
            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            while (rs.next()) {
                al = new Bean();
                al.setFkEncuesta(rs.getInt("idEncusta"));
                if(encueActual == al.getFkEncuesta()){
                al.setEncuesta(rs.getString("NomEncuestas"));
                al.setUser(rs.getString("Cliente"));
                al.setSchool(rs.getString("Escuela"));
                al.setFuncionalidad(rs.getInt("Funcionalidad"));
                al.setConfiabilidad(rs.getInt("Confiabilidad"));
                al.setUsabilidad(rs.getInt("Usabilidad"));
                al.setRendimiento(rs.getInt("Rendiimiento"));
                al.setMantenimiento(rs.getInt("Mantenimiento"));
                al.setPortabilidadmpT(rs.getInt("Portabilidad"));
                al.setSeguridad(rs.getInt("Seguridad"));
                al.setCompatibilidad(rs.getInt("Compatibilidad"));
                al.setPorcentaje(rs.getDouble("Porcentaje"));
                all.add(al);
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(Dao.class.getName())
                    .log(Level.SEVERE, "Error findAll", e);
        } finally {
            closeConnections();
        }
        return all;
    }

    public Bean getDatas(int encueActual) {
        Bean al = new Bean();
        int count = 0;
        double porc = 0;
        try {
            conn = new MySQLConnection().getConnection();
            String query = "SELECT * FROM merequetenge;";
            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            while (rs.next()) {
                al.setFkEncuesta(rs.getInt("idEncusta"));
                if(encueActual == al.getFkEncuesta()){
                    al.setPorcentaje(rs.getDouble("Porcentaje"));
                    count++;
                    porc = porc + al.getPorcentaje();
                }
            }
            porc = porc / count;
            al.setGenPorc(porc);
            al.setCount(count);
        } catch (SQLException e) {
            Logger.getLogger(Dao.class.getName())
                    .log(Level.SEVERE, "Error findAll", e);
        } finally {
            closeConnections();
        }
        return al;
    }

    public void closeConnections() {
        try {
            if (conn != null) {
                conn.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (cstm != null) {
                cstm.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
    }
}
