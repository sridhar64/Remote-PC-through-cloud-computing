/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monitor;

import java.util.logging.Level;
import java.util.logging.Logger;
import remotepcmeetdesktop.Login;

/**
 *
 * @author pc
 */
public class Main extends javax.swing.JFrame implements Runnable {

    private Thread t;
    private int n;
    private final Login login;

    /**
     * Creates new form Main
     */
    public Main(int n,remotepcmeetdesktop.Login login) {
        this.n=n;
        this.login=login;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    public void startMonitor() {
        t = new Thread(this);
        t.start();
    }

    public void stopMonitor() {
        t.stop();
        SendFtp sn = new SendFtp(login);
        sn.setCount(0);
        if (sn.getCount() == 0) {
            sn.open();
        }
    }

    /**
     * @param args the command line arguments
     */
    @Override
    public void run() {
        ScreenShot sc = new ScreenShot(login);
        sc.setFormat("jpg");
        sc.setDir("screen");
        int ht=(int) sc.getScreenHeight();
        login.log("height : "+ht);
        int wd=(int) sc.getScreenWidth();
        login.log("weight : "+wd);
        new SendFtp(login).sendScreenSize(ht, wd);
        for (int i = 0;; i++) {
            sc.setFileName("image_" + (i + 1));
            sc.capture();
            login.log((i + 1) + " image captured...");
            new SendFtp(sc.getDirName() + "\\" + sc.getFileName(), (i + 1) + ".jpg", (i + 1),login).send();
            try {
                Thread.sleep(n);
            } catch (InterruptedException ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
