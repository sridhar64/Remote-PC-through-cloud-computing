package pccontrol;

import java.awt.AWTException;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;
import java.util.logging.Level;
import java.util.logging.Logger;
import remotepcmeetdesktop.Login;

class Robo {

    Robot robot = new Robot();

    private boolean kpress=false;
    private int kpresscode=0;
    private final Login login;
    
    public Robo(remotepcmeetdesktop.Login login) throws AWTException {
        this.login=login;
        robot.setAutoDelay(40);
        robot.setAutoWaitForIdle(true);
    }

    public static void main(String args[])
    {
        try {
            Robo r=new Robo(null);
            r.press(524);
            r.press(524);
            r.type(82);
            r.leftClick(100, 100);
        } catch (AWTException ex) {
            Logger.getLogger(Robo.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void leftClick(int x, int y) {
        robot.mouseMove(x, y);
        robot.mousePress(InputEvent.BUTTON1_MASK);
        robot.delay(200);
        robot.mouseRelease(InputEvent.BUTTON1_MASK);
        robot.delay(200);
        this.check();
    }

    public void rightClick(int x,int y) {
        robot.mouseMove(x, y);
        robot.mousePress(InputEvent.BUTTON3_MASK);
        robot.delay(200);
        robot.mouseRelease(InputEvent.BUTTON3_MASK);
        robot.delay(200);
        this.check();
    }

    public void type(int i) {
        robot.delay(40);
        robot.keyPress(i);
        robot.keyRelease(i);
        this.check();
    }

    public void press(int i)
    {
        this.check();
        robot.delay(40);
        robot.keyPress(i);
        this.kpress=true;
        this.kpresscode=i;
    }
    
    public void release()
    {
        robot.delay(40);
        robot.keyRelease(this.kpresscode);
    }
    
    public void check()
    {
        if(this.kpress)
        {
            this.release();
            this.kpress=false;
        }
    }
    
    public void type(String s) {
        byte[] bytes = s.getBytes();
        for (byte b : bytes) {
            int code = b;
            // keycode only handles [A-Z] (which is ASCII decimal [65-90])
            if (code > 96 && code < 123) {
                code = code - 32;
            }
            robot.delay(40);
            robot.keyPress(code);
            robot.keyRelease(code);
        }
        this.check();
    }
}
