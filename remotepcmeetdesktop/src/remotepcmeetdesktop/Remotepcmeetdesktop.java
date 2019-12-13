/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package remotepcmeetdesktop;

/**
 *
 * @author Kadiyala
 */
public class Remotepcmeetdesktop {

    Login l;
    private static int dos,mon,con;
    private static String username,password,host,ftp;
    
    public Remotepcmeetdesktop() {
        l=new Login();
        l.main();
    }

    public static void setHost(String host) {
        Remotepcmeetdesktop.host = "http://"+host+"/RemotePCControl/";
    }

    public static String getHost() {
        return host;
    }

    public static void setFtp(String ftp) {
        Remotepcmeetdesktop.ftp = ftp;
    }

    public static String getFtp() {
        return ftp;
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        new Remotepcmeetdesktop();
    }

    public static int getCon() {
        return con;
    }

    public static int getDos() {
        return dos;
    }

    public static int getMon() {
        return mon;
    }

    public static void setCon(int con) {
        Remotepcmeetdesktop.con = con;
    }

    public static void setDos(int dos) {
        Remotepcmeetdesktop.dos = dos;
    }

    public static void setMon(int mon) {
        Remotepcmeetdesktop.mon = mon;
    }

    public static String getPassword() {
        return password;
    }

    public static String getUsername() {
        return username;
    }

    public static void setPassword(String password) {
        Remotepcmeetdesktop.password = password;
    }

    public static void setUsername(String username) {
        Remotepcmeetdesktop.username = username;
    }
    
    public void log(String s)
    {
        l.log(s);
    }
    
}
