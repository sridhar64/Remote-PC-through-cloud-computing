/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kadiyala
 */
public class User {

    Db db;
    private ResultSet rs;
    private String username = "";
    private String password = "";

    public User(String username, String password) {
        db = Db.getDb();
        this.username = username;
        this.password = password;
    }

    public User() {
        db = Db.getDb();
    }

    public boolean validate() {
        boolean b = false;
        try {
            rs = db.ex("select username,password from user where username='" + username + "' and password='" + password + "'");
            for (; rs.next();) {
                b = true;
            }
            db.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            b = false;
        }
        return b;
    }

    public int getUsers(String users[], String username) {
        int i = 0;
        try {
            rs = db.ex("select username,name from user where username not in(select touser from requests where fromuser='" + username + "') and username <> '" + username + "'");
            for (i = 0; rs.next(); i++) {
                users[i] = rs.getString("username");
                i++;
                users[i] = rs.getString("name");
            }
            db.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return i;
    }

    public int insertRequests(String fromname, String toname, String total) {
        int i = 0;
        try {
            rs = db.ex("select * from requests where fromuser='" + fromname + "' and touser='" + toname + "'");
            for (i = 0; rs.next();) {
                i++;
            }
            db.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getCause());
        }
        if (i == 0) {
            return db.exu("insert into requests values('" + fromname + "','" + toname + "'," + Integer.parseInt(total) + ",0)");
        } else {
            return i;
        }
    }

    public int acceptRequests(String username, String toname, int mode) {
        return db.exu("update requests set ar=1,mode=" + mode + " where fromuser='" + toname + "' and touser='" + username + "'");
    }

    public int getRequests(String username, String requests[]) {
        int i = 0;
        try {
            rs = db.ex("select fromuser,mode from requests where touser='" + username + "' and ar=0");
            for (i = 0; rs.next(); i++) {
                requests[i] = rs.getString("fromuser");
                i++;
                requests[i] = "" + rs.getInt("mode");
            }
            db.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getCause());
        }
        return i;
    }

    public int getRequestsPen(String username, String requests[]) {
        int i = 0;
        try {
            rs = db.ex("select touser,mode from requests where fromuser='" + username + "' and ar=0");
            for (i = 0; rs.next(); i++) {
                requests[i] = rs.getString("touser");
                i++;
                requests[i] = "" + rs.getInt("mode");
            }
            db.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getCause());
        }
        return i;
    }

    public int getAccepts(String username, String accepts[]) {
        int i = 0;
        try {
            rs = db.ex("select touser,mode from requests where fromuser='" + username + "' and ar=1");
            for (i = 0; rs.next(); i++) {
                accepts[i] = rs.getString("touser");
                i++;
                accepts[i] = "" + rs.getInt("mode");
            }
            db.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getCause());
        }
        return i;
    }

    public void getSpeed(String s, int con[]) {
        try {
            rs = db.ex("select d,m,c from detail where username='" + s + "'");
            for (; rs.next();) {
                con[0] = rs.getInt("d");
                con[1] = rs.getInt("m");
                con[2] = rs.getInt("c");
            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
