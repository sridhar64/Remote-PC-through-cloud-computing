/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

/**
 *
 * @author pavan
 */
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;

/**
 * A program that demonstrates how to upload files from local computer to a
 * remote FTP server using Apache Commons Net API.
 *
 * @author www.codejava.net
 */
public class Ftp {

    public Ftp() {

    }

    private String server;
    private final int port = 21;
    private String user;
    private String pass;
    private String fileName;
    private String serverFileName;
    private FTPClient ftpClient;

    public void setServer(String serverName) {
        this.server = serverName;
    }

    public String getServer() {
        return this.server;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getUser() {
        return this.user;
    }

    public void setPassword(String password) {
        this.pass = password;
    }

    public String getPassword() {
        return this.pass;
    }

    public void setFileName(String FileName) {
        this.fileName = FileName;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setServerFileName(String ServerFileName) {
        this.serverFileName = ServerFileName;
    }

    public String getServerFileName() {
        return this.serverFileName;
    }

    public void con() {

        ftpClient = new FTPClient();

        try {

            ftpClient.connect(server, port);
            ftpClient.login(user, pass);
            ftpClient.enterLocalPassiveMode();
            ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
        } catch (IOException ex) {
            System.out.println("Error: " + ex.getMessage());
            ex.printStackTrace();
            close();
        }
    }

    public void close() {

        try {
            if (ftpClient.isConnected()) {
                ftpClient.logout();
                ftpClient.disconnect();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }

    }

    public void send() {
        con();
        try {
            // APPROACH #1: uploads first file using an InputStream
            File firstLocalFile = new File(fileName);

            String firstRemoteFile = serverFileName;
            InputStream inputStream = new FileInputStream(firstLocalFile);

            System.out.println("Started uploading file");
            boolean done = ftpClient.storeFile(firstRemoteFile, inputStream);

            inputStream.close();
            if (done) {
                System.out.println("The file uploaded successfully.");
            }
        } catch (IOException ex) {
            Logger.getLogger(Ftp.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            close();
        }
    }
    
    public void delete()
    {
        try {
            con();
            ftpClient.deleteFile(serverFileName);
        } catch (IOException ex) {
            Logger.getLogger(Ftp.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            close();
        }
    }
}
