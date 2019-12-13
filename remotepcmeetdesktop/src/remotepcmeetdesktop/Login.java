/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package remotepcmeetdesktop;

import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.text.DefaultCaret;
import pccontrol.Main;

/**
 *
 * @author Kadiyala
 */
public class Login extends javax.swing.JFrame implements ActionListener {

    pccontrol.Main con;
    private boolean buttonMode = false;
    private JButton j1;
    private JTextArea ta1;
    private mainp41.Main dos;
    private monitor.Main mon;
    private JScrollPane jsp1;

    /**
     * Creates new form Login
     */
    public Login() {
        initComponents();
        this.setTitle("Remote Pc Meet");
        this.setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jPasswordField1 = new javax.swing.JPasswordField();
        jButton1 = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Arial", 1, 24)); // NOI18N
        jLabel1.setText("USER LOGIN");

        jLabel3.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel3.setText("User Name");

        jTextField1.setColumns(15);
        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });

        jPasswordField1.setColumns(15);

        jButton1.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jButton1.setText("Login");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel4.setText("Password");

        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel2.setText("Host Address");

        jLabel5.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel5.setText("FTP Address");

        jTextField2.setColumns(15);
        jTextField2.setText("localhost:8084");

        jTextField3.setColumns(15);
        jTextField3.setText("localhost");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(127, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel5)
                    .addComponent(jLabel2)
                    .addComponent(jLabel4)
                    .addComponent(jLabel3))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPasswordField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextField3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(147, 147, 147))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(203, 203, 203)
                        .addComponent(jLabel1))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(227, 227, 227)
                        .addComponent(jButton1)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(105, 105, 105)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(33, 33, 33)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(jPasswordField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(jTextField3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(40, 40, 40)
                .addComponent(jButton1)
                .addContainerGap(84, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField1ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        String username = jTextField1.getText();
        String password = jPasswordField1.getText();
        String host=jTextField2.getText();
        String FTP=jTextField3.getText();
        if((host.length()>4)&&(FTP.length()>4))
        {
            Remotepcmeetdesktop.setHost(host);
            Remotepcmeetdesktop.setFtp(FTP);
        }
        else
        {
            JOptionPane.showMessageDialog(this, "You cant leave blank host and ftp addresses", "Host Error", JOptionPane.ERROR_MESSAGE);
            return;
        }
        if ((username.length() > 4) && (password.length() > 4)) {
            Remotepcmeetdesktop.setUsername(username);
            Remotepcmeetdesktop.setPassword(password);
            URL u = null;
            try {
                u = new URL(remotepcmeetdesktop.Remotepcmeetdesktop.getHost()+"javalogin.jsp?user=" + username + "&pass=" + password);
            } catch (MalformedURLException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }
            String result = this.url(u);
            if (result.compareToIgnoreCase("valid") == 0) {
                this.log("valid login");
                setParam(username);
                startControls();
                this.remove(jPanel1);
                this.setLayout(new BorderLayout());
                JPanel p1;
                p1 = new JPanel(new GridLayout(1, 7));
                p1.add(new JLabel("DOS"));
                JTextField temp;
                p1.add(temp = new JTextField("" + Remotepcmeetdesktop.getDos()));
                temp.setEnabled(false);
                p1.add(new JLabel("Monitor"));
                p1.add(temp = new JTextField("" + Remotepcmeetdesktop.getMon()));
                temp.setEnabled(false);
                p1.add(new JLabel("Control"));
                p1.add(temp = new JTextField("" + Remotepcmeetdesktop.getCon()));
                temp.setEnabled(false);
                p1.add(j1 = new JButton("Stop"));
                j1.addActionListener(this);
                this.add(p1, BorderLayout.NORTH);
                ta1 = new JTextArea();
                ta1.append("Log Details.......\n");
                this.add(jsp1=new JScrollPane(ta1), BorderLayout.CENTER);
                ta1.setEditable(false);
                DefaultCaret caret = (DefaultCaret) ta1.getCaret();
                caret.setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);
                this.setVisible(true);
            } else {
                JOptionPane.showMessageDialog(this, "Username or Password Does'nt Exist", "Login Error", JOptionPane.ERROR_MESSAGE);
            }
        } else {
            JOptionPane.showMessageDialog(this, "Username or Password length is less than 8", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public void main() {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Login().setVisible(true);
            }
        });
    }

    public String url(URL u) {
        try {
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

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPasswordField jPasswordField1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    // End of variables declaration//GEN-END:variables

    private void setParam(String username) {
        URL u = null;
        try {
            u = new URL(remotepcmeetdesktop.Remotepcmeetdesktop.getHost()+"dmcon.jsp?un=" + username);
        } catch (MalformedURLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        String result = this.url(u);
        if (result.compareToIgnoreCase("0") == 0) {
            log("error");
        } else {
            log(result);
            String s = "";
            for (int i = 0, count = 0; i < result.length(); i++) {
                char c = result.charAt(i);
                if (c == ';') {
                    int n = Integer.parseInt(s);
                    if (count == 0) {
                        Remotepcmeetdesktop.setDos(n);
                    } else if (count == 1) {
                        Remotepcmeetdesktop.setMon(n);
                    } else if (count == 2) {
                        Remotepcmeetdesktop.setCon(n);
                    }
                    s = "";
                    count++;
                } else {
                    s += c;
                }
            }
            log(Remotepcmeetdesktop.getDos() + " " + Remotepcmeetdesktop.getMon() + " " + Remotepcmeetdesktop.getCon());
        }
    }

    private void startControls() {
        dos = new mainp41.Main(Remotepcmeetdesktop.getDos(), this);
        dos.startDos();
        mon = new monitor.Main(Remotepcmeetdesktop.getMon(), this);
        mon.startMonitor();
        con = new Main(Remotepcmeetdesktop.getCon(), this);
        con.startPcControl();
    }

    private void stopControls() {
        dos.stopDos();
        mon.stopMonitor();
        con.stopPcControl();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == j1) {
            log("clicked on stop");
            this.stopControls();
        }
    }

    public void log(String s) {
        Date d = new Date();
        String m = "" + d.toString() + " -> " + s + "\n";
        System.out.println(m);
        if (ta1 != null) {
            ta1.append(m);
        }
    }
}
