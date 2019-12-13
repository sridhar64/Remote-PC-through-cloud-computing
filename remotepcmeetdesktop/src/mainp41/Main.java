/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mainp41;

import remotepcmeetdesktop.Login;

/**
 *
 * @author pc
 */
public class Main extends javax.swing.JFrame {

    /**
     * Creates new form main
     */
    Thread t;
    private int n;
    Mainp41 mp;
    private Login login;
    
    public Main(int n,remotepcmeetdesktop.Login login) {
        this.n = n;
        this.login=login;
    }

    public void startDos() {
        mp = new Mainp41(n,login);
        t = mp.getThread();
    }

    public void stopDos() {
        if (t != null) {
            t.stop();
        }

    }
}
