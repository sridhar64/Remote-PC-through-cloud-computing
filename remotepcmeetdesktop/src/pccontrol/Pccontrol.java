/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pccontrol;

import java.awt.AWTException;
import java.awt.event.KeyEvent;
import java.util.logging.Level;
import java.util.logging.Logger;
import remotepcmeetdesktop.Login;

/**
 *
 * @author Kadiyala
 */
public class Pccontrol implements Runnable {

    /**
     * @param args the command line arguments
     */
    Robo r;
    private String s;
    private Thread t;
    private final Login login;

    public Pccontrol(remotepcmeetdesktop.Login login) {
        this.login=login;
        try {
            r = new Robo(login);
        } catch (AWTException ex) {
            Logger.getLogger(Pccontrol.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void find(String st) {
        //To change body of generated methods, choose Tools | Templates.
        String s = "";
        int l = st.length(), key = -1, mx = -1, my = -1;
        char c;
        boolean kevent = false;
        int temp = Integer.parseInt("" + st.charAt(0));
        if (temp == 0||temp==2||temp==3) {
            kevent = false;
        } else {
            kevent = true;
        }
        for (int i = 2, count = 0; i < l; i++) {
            c = st.charAt(i);
            if (c == ',' || c == ';') {
                int num = Integer.parseInt(s);
                if (count == 0) {
                    if (kevent == false) {
                        key = num;
                    } else {
                        mx = num;
                    }
                } else {
                    my = num;
                }
                count++;
                s = "";
            } else {
                s += c;
            }
        }
        if (kevent == false) {
            if(temp==0)
                r.type(KeyEvent.getExtendedKeyCodeForChar(key));
            else if(temp==2)
                r.type(key);
            else if(temp==3)
                r.press(key);
            login.log("it is key event and value is " + key + " " + s);
        } else {
            if(temp==1)
                r.leftClick(mx, my);
            else if(temp==4)
                r.rightClick(mx, my);
            login.log("it is mouse event and x : " + mx + " and y : " + my);
        }
    }

    public void strStart(String s) {
        this.s = s;
        t = new Thread(this);
        t.start();
    }

    @Override
    public void run() {
        char c;
        int i, l = s.length();
        String st = "";
        for (i = 0; i < l; i++) {
            c = s.charAt(i);
            if (c == ';') {
                find(st += ";");
                st = "";
            } else {
                st += c;
            }
        }
    }
}
