/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mainp41;

import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author pc
 */
public class Caller {

    public static String system(String executer) {
        RandomAccessFile rf1=null;
        int rr;
        String re = null;
        Runtime r = Runtime.getRuntime();
        RandomAccessFile rf;
        try {
            rf1 = new RandomAccessFile("data.dat", "rw");
            rf = new RandomAccessFile("exec.bat", "rw");
            rf.setLength(0);
            for(int i=0;i<executer.length();i++)
            rf.write(executer.charAt(i));
            rf.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Caller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Caller.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            Process p = r.exec("cmd /c exec.bat");
            BufferedInputStream b = new BufferedInputStream(p.getInputStream());
            re = "";
            rf1.setLength(0);
            while ((rr = b.read()) != -1) {
                rf1.write(rr);
                re += (char) rr;
            }
            b = new BufferedInputStream(p.getErrorStream());
            while ((rr = b.read()) != -1) {
                rf1.write(rr);
                re += (char) rr;
            }
            rf1.close();
            return re ;
        } catch (IOException ex) {
            ex.printStackTrace();
            try {
                rf1.close();
            } catch (IOException ex1) {
                Logger.getLogger(Caller.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
        return re;
    }
    
    public static void main(String args[])
    {
        Caller.system("ding");
    }
}
