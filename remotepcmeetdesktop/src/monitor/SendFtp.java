/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monitor;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.logging.Level;
import java.util.logging.Logger;
import mainp41.Ftp;
import remotepcmeetdesktop.Login;

/**
 *
 * @author pc
 */
public class SendFtp implements Runnable {

    private Ftp f;
    private String path, serverFName, conPath = remotepcmeetdesktop.Remotepcmeetdesktop.getHost() + "java_monitor.jsp";
    private Thread t;
    private int count;
    private String para = "imgn";
    private String username;
    private Login login;

    public SendFtp(String Name, String FileName, int count, remotepcmeetdesktop.Login login) {
        f = new Ftp();
        f.setServer("localhost");
        f.setUser("pavan");
        f.setPassword("pavanpavan");
        this.path = Name;
        this.serverFName = FileName;
        this.count = count;
        this.login = login;
        this.username = remotepcmeetdesktop.Remotepcmeetdesktop.getUsername();
    }

    public SendFtp(remotepcmeetdesktop.Login login) {
        this.login = login;
        this.username = remotepcmeetdesktop.Remotepcmeetdesktop.getUsername();
    }

    public void setCount(int number) {
        this.count = number;
    }

    public int getCount() {
        return this.count;
    }

    public void setConPath(String path) {
        this.conPath = path;
    }

    public String getConPath() {
        return this.conPath;
    }

    public void setPath(String Name) {
        this.path = Name;
    }

    public String getPath() {
        return this.path;
    }

    public void setServerFileName(String FileName) {
        this.serverFName = FileName;
    }

    public String getServerFileName() {
        return this.serverFName;
    }

    public void send() {
        t = new Thread(this);
        t.start();
    }

    @Override
    public void run() {
        f.setFileName(path);
        f.setServerFileName(serverFName);
        f.send();
        open();
        deleteFile();
    }

    public void deleteFile() {
        new File(path).delete();
    }

    public void open() {

        URL url;

        try {
            // get URL content
            url = new URL(conPath + "?" + para + "=" + count + "&un=" + username);
            URLConnection conn = url.openConnection();

            // open the stream and put it into BufferedReader
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(conn.getInputStream()));

            String inputLine;
            while ((inputLine = br.readLine()) != null) {
                login.log(inputLine);
            }
            br.close();
            login.log("Done");
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void sendScreenSize(int h,int w) {
        URL url;

        try {
            // get URL content
            url = new URL(remotepcmeetdesktop.Remotepcmeetdesktop.getHost() + "java_settings.jsp?height=" + h + "&un=" + remotepcmeetdesktop.Remotepcmeetdesktop.getUsername()+"&width="+w);
            URLConnection conn = url.openConnection();

            // open the stream and put it into BufferedReader
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(conn.getInputStream()));

            String inputLine;
            while ((inputLine = br.readLine()) != null) {
                login.log(inputLine);
            }
            br.close();
            login.log("screen size sent Done");
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
