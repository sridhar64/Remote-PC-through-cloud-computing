/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pccontrol;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import remotepcmeetdesktop.Login;

/**
 *
 * @author pc
 */
public class Main implements Runnable {

    private Thread t;
    int n;
    private Pccontrol pc;
    private final Login login;

    /**
     * Creates new form base
     */
    public Main(int n,remotepcmeetdesktop.Login login) {
        this.n=n;
        this.login=login;
    }

    public void startPcControl() {
        t = new Thread(this);
        t.start();
    }

    public void stopPcControl() {
        t.stop();
    }

    @Override
    public void run() {
        for (;;) {
            String ss = url();
            login.log("events at java : "+ss);
            pc = new Pccontrol(login);
            if (ss.equals("0")) {
                login.log("nothing to do..");
                try {
                    Thread.sleep(n);
                } catch (InterruptedException ex) {
                    ex.printStackTrace();
                }
            } else {
                pc.strStart(ss);
            }
        }
    }

    public String url() {
        URL u;
        try {
            u = new URL(remotepcmeetdesktop.Remotepcmeetdesktop.getHost()+"javaeventscheck.jsp?un="+remotepcmeetdesktop.Remotepcmeetdesktop.getUsername());
            URLConnection con = u.openConnection();
            BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String il, rs = "";
            while ((il = br.readLine()) != null) {
                rs += il;
            }
            br.close();
            return rs;
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return null;
    }
}
