/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monitor;

/**
 *
 * @author pc
 */
import java.awt.AWTException;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import remotepcmeetdesktop.Login;

/**
 * This program demonstrates how to capture a screenshot (full screen) as an
 * image which will be saved into a file.
 *
 * @author www.codejava.net
 *
 */
public class ScreenShot {

    private String format;
    private String fileName;
    private File f;
    private String dir;
    private final Login login;
    
    public ScreenShot(remotepcmeetdesktop.Login login)
    {
        this.login=login;
    }

    public void setFormat(String extension) {
        this.format = extension;
    }

    public String getFormat() {
        return this.format;
    }

    public void setFileName(String name) {
        this.fileName = name;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setDir(String pathName)
    {
        this.f=new File(pathName);
        f.mkdirs();
        this.dir=pathName;
    }
    
    public String getDirName()
    {
        return this.dir;
    }
    
    public void capture() {
        try {
            Robot robot = new Robot();
            fileName = fileName + "." + format;
            Rectangle screenRect = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
            BufferedImage screenFullImage = robot.createScreenCapture(screenRect);
            ImageIO.write(screenFullImage, format, new File(dir+"\\"+fileName));
            login.log("Captured...");
        } catch (AWTException | IOException ex) {
            System.err.println(ex);
        }
    }
    
    public double getScreenHeight()
    {
        Rectangle screenRect = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
        return screenRect.getHeight();
    }
    public double getScreenWidth()
    {
        Rectangle screenRect = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
        return screenRect.getWidth();
    }
}
