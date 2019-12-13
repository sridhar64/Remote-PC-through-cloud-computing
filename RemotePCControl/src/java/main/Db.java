/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author pc
 */
public class Db {

    private Connection con;
    private String url;
    private Statement s;
    private String user, pass, dbname;
    private ResultSet rs;
    private String serverName;

    public Db() {
    }

    public void setDbName(String name) {
        this.dbname = name;
    }

    public String getDbName() {
        return this.dbname;
    }

    public void setUser(String name) {
        this.user = name;
    }

    public String getUser() {
        return this.user;
    }

    public void setPassword(String password) {
        this.pass = password;
    }

    public String getPassword() {
        return this.pass;
    }

    public void setServerName(String name) {
        this.serverName = name;
    }

    public String getServerName() {
        return this.serverName;
    }

    public boolean connect() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            url = "jdbc:mysql://" + serverName + "/" + dbname;
            con = DriverManager.getConnection(url, user, pass);
            s = con.createStatement();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            err("DATA BASE ERROR");
            return false;
        }
    }

    public void close() {
        try {
            s.close();
        } catch (SQLException ex) {
            Logger.getLogger(Db.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Db.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet ex(String query) {
        connect();
        try {
            rs = s.executeQuery(query);
        } catch (SQLException ex) {
            Logger.getLogger(Db.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public int exu(String query) {
        connect();
        int i = 0;
        try {
            i = s.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(Db.class.getName()).log(Level.SEVERE, null, ex);
        }
        close();
        return i;
    }

    public void err(String er) {
        System.out.println(er);
    }

    public static Db getDb() {
        Db db = new Db();
        db.setServerName("localhost");
        db.setUser("pavan");
        db.setPassword("pavanpavan");
        db.setDbName("pctom");
        return db;
    }
}
