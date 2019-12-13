<%@page import="main.Log"%><%@page import="org.apache.commons.net.ftp.FTP"%><%@page import="java.io.RandomAccessFile"%><%@page import="java.io.IOException"%><%@page import="java.io.FileOutputStream"%><%@page import="java.io.BufferedOutputStream"%><%@page import="java.io.OutputStream"%><%@page import="java.io.File"%><%@page import="org.apache.commons.net.ftp.FTPClient"%><%@page import="java.net.URLDecoder"%><%@page import="java.sql.ResultSet"%><%@page import="main.Db"%><%@page contentType="text/html" pageEncoding="UTF-8"%><%
    ResultSet rs;
    int count = 0;
    String un = request.getParameter("un");
    String s = "select str from exee where username='" + un + "'";
    main.Db db = Db.getDb();
    rs = db.ex(s);
    for (; rs.next();) {
        count++;
        s = rs.getString("str");
        System.out.println("clicheck : " + s);
    }
    db.close();
    rs.close();
    if (count == 0) {
        out.print("0");
    } else {
        db.exu("delete from exee where username='" + un + "'");
        out.print(post());
    }%><%!
    public String post() {
        String hh = "";
        String server = "localhost";
        int port = 21;
        String user = "pavan";
        String pass = "pavanpavan";
        try {
            FTPClient ftpClient = new FTPClient();
            ftpClient.connect(server, port);
            ftpClient.login(user, pass);
            ftpClient.enterLocalPassiveMode();
            ftpClient.setFileType(FTP.BINARY_FILE_TYPE);

            // APPROACH #1: using retrieveFile(String, OutputStream)
            String remoteFile1 = "server_data.dat";
            File downloadFile1 = new File("e:\\download_data.dat");
            OutputStream outputStream1 = new BufferedOutputStream(new FileOutputStream(downloadFile1));
            boolean success = ftpClient.retrieveFile(remoteFile1, outputStream1);
            outputStream1.close();

            if (success) {
                Log.log("File #1 has been downloaded successfully.");
            }

            try {
                if (ftpClient.isConnected()) {
                    ftpClient.logout();
                    ftpClient.disconnect();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        RandomAccessFile rf = null;
        String s="";
        try {
            rf = new RandomAccessFile("e:\\download_data.dat", "rw");
            byte[] bb;
            if (rf.length() > 0) {
                bb = new byte[(int)rf.length()];
                rf.readFully(bb);
                s=new String(bb);
                rf.close();
            }
            Log.log("\nclicheck : "+s);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return s;
    }%>