/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mainp41;

//import ftp.Ftp;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.logging.Level;
import java.util.logging.Logger;
import remotepcmeetdesktop.Login;

/**
 *
 * @author pc
 */
public class Mainp41 implements Runnable {

    private Thread t;
    private final String USER_AGENT = "Mozilla/5.0";
    /**
     * @param args the command line arguments
     */

    private int secs = 1000;
    private final Login login;
    private Ftp f;

    Mainp41(int sec, remotepcmeetdesktop.Login login) {
        this.login = login;
        this.secs = sec;
        t = new Thread(this);
        t.start();
    }

    public Thread getThread() {
        return t;
    }

    @Override
    public void run() {
        String s;
        for (;;) {
            s = url("javacheck.jsp?un=" + remotepcmeetdesktop.Remotepcmeetdesktop.getUsername());
            if (s.equals("0")) {
                try {
                    log(s);
                    Thread.sleep(secs);
                } catch (InterruptedException ex) {
                    Logger.getLogger(Mainp41.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                log(s);
                try {
                    post(s);
                } catch (UnsupportedEncodingException ex) {
                    Logger.getLogger(Mainp41.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    

    public String url(String s) {
        URL u;
        try {
            u = new URL(remotepcmeetdesktop.Remotepcmeetdesktop.getHost() + s);
            URLConnection con = u.openConnection();
            BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String il, rs = "";
            while ((il = br.readLine()) != null) {
                rs += il;
            }
            br.close();
            return rs;
        } catch (IOException ex) {
            Logger.getLogger(Mainp41.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    private void log(String l) {
        login.log("dos : " + l);
    }

    private void post(String s) throws UnsupportedEncodingException {
        Caller.system(s);
        f = new Ftp();
        f.setServer("localhost");
        f.setUser("pavan");
        f.setPassword("pavanpavan");
        f.setFileName("data.dat");
        f.setServerFileName("data.dat");
        f.send();
        log(this.url("javadone.jsp?s=done&un="+remotepcmeetdesktop.Remotepcmeetdesktop.getUsername()));
    }
}