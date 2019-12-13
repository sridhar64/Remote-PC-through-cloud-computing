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
public class Delc implements Runnable {

    private final Thread t;
    private Db db;
    private ResultSet rs;
    private final String username;

    public Delc(String u) {
        this.username = u;
        db = Db.getDb();
        db.exu("update delc set count="+getCurrentCount());
        t = new Thread(this);
        t.start();
    }

    @Override
    public void run() {
        int c = this.getCurrentCount(0);
        for (int i = 1; i <= c; i++) {
            Ftp f = new Ftp();
            f.setServer("localhost");
            f.setUser("pavan");
            f.setPassword("pavanpavan");
            f.setServerFileName(i + ".jpg");
            f.delete();
            Log.log("deleted file : "+i+".jpg");
        }
    }

    public int getCurrentCount() {
        int c = 0;
        try {
            db = Db.getDb();
            rs = db.ex("select cimg from monitor where username='" + username + "'");
            while (rs.next()) {
                c = rs.getInt("cimg");
            }
            rs.close();
            db.close();
        } catch (SQLException ex) {
            Logger.getLogger(Delc.class.getName()).log(Level.SEVERE, null, ex);
        }
        Log.log("cimg count : "+c);
        return c;
    }
    
    public int getCurrentCount(int n) {
        try {
            db = Db.getDb();
            rs = db.ex("select count from delc");
            while (rs.next()) {
                n = rs.getInt("count");
            }
            rs.close();
            db.close();
        } catch (SQLException ex) {
            Logger.getLogger(Delc.class.getName()).log(Level.SEVERE, null, ex);
        }
        Log.log("delc count : "+n);
        return n;
    }
}
