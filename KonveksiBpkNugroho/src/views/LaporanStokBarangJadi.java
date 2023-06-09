/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package views;
import config.Koneksi;
import java.awt.Color;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRResultSetDataSource;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;
/**
 *
 * @author FADHAL
 */
public class LaporanStokBarangJadi extends javax.swing.JFrame {

    /**
     * Creates new form LaporanBarangMasuk
     */
    public LaporanStokBarangJadi() {
        initComponents();
        dataBrgJadi();
    }
    
   public void dataBrgJadi() {
        DefaultTableModel tblBrgJadi = new DefaultTableModel();
        tblBrgJadi.addColumn("No");
        tblBrgJadi.addColumn("Nomor Supplier");
        tblBrgJadi.addColumn("Nama Supplier");
        tblBrgJadi.addColumn("Jumlah");
        tblBrgJadi.addColumn("Harga");
        tblBrgJadi.addColumn("Keterangan");
        tblBrgJadi.addColumn("Tanggal");
        
        String cariDataBrgMasuk = txtKode.getText();
        try{
            int no = 1;
            String sql = "SELECT * FROM tb_brg_jadi ";
            Connection conn = (Connection)Koneksi.getKoneksi();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()){
                tblBrgJadi.addRow(new Object[]{
                    no++,
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7)
                });
            }
            tabelBarangJadi.setModel (tblBrgJadi);
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Koneksi Database Gagal"+ e.getMessage());
        }
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
        panelHeader = new javax.swing.JPanel();
        btnClose = new javax.swing.JButton();
        labelNama = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tabelBarangJadi = new javax.swing.JTable();
        btnCari = new javax.swing.JButton();
        txtKode = new javax.swing.JTextField();
        btnCetak = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        panelHeader.setBackground(new java.awt.Color(204, 102, 255));
        panelHeader.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                panelHeaderMouseDragged(evt);
            }
        });
        panelHeader.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                panelHeaderMousePressed(evt);
            }
        });

        btnClose.setBackground(new java.awt.Color(204, 102, 255));
        btnClose.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/logout.png"))); // NOI18N
        btnClose.setContentAreaFilled(false);
        btnClose.setOpaque(true);
        btnClose.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnCloseMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnCloseMouseExited(evt);
            }
        });
        btnClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCloseActionPerformed(evt);
            }
        });

        labelNama.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        labelNama.setForeground(new java.awt.Color(255, 255, 255));
        labelNama.setText("Laporan Stok Barang");

        javax.swing.GroupLayout panelHeaderLayout = new javax.swing.GroupLayout(panelHeader);
        panelHeader.setLayout(panelHeaderLayout);
        panelHeaderLayout.setHorizontalGroup(
            panelHeaderLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, panelHeaderLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(labelNama, javax.swing.GroupLayout.PREFERRED_SIZE, 237, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnClose, javax.swing.GroupLayout.PREFERRED_SIZE, 54, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        panelHeaderLayout.setVerticalGroup(
            panelHeaderLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(btnClose, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(panelHeaderLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(labelNama, javax.swing.GroupLayout.DEFAULT_SIZE, 27, Short.MAX_VALUE)
                .addContainerGap())
        );

        jPanel1.add(panelHeader, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 900, -1));

        tabelBarangJadi.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        tabelBarangJadi.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4", "Title 5"
            }
        ));
        tabelBarangJadi.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        tabelBarangJadi.setRowHeight(30);
        tabelBarangJadi.setRowMargin(2);
        tabelBarangJadi.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tabelBarangJadiMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tabelBarangJadi);

        jPanel1.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 107, 880, 434));

        btnCari.setBackground(new java.awt.Color(204, 204, 204));
        btnCari.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        btnCari.setText("CetakPerKode");
        btnCari.setContentAreaFilled(false);
        btnCari.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnCari.setOpaque(true);
        btnCari.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnCariMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnCariMouseExited(evt);
            }
        });
        btnCari.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCariActionPerformed(evt);
            }
        });
        jPanel1.add(btnCari, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 60, 120, 40));

        txtKode.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        txtKode.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtKodeKeyTyped(evt);
            }
        });
        jPanel1.add(txtKode, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 61, 180, 40));

        btnCetak.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        btnCetak.setText("CetakALL");
        btnCetak.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnCetak.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCetakActionPerformed(evt);
            }
        });
        jPanel1.add(btnCetak, new org.netbeans.lib.awtextra.AbsoluteConstraints(780, 60, 110, 40));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 556, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnCloseMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCloseMouseEntered
        btnClose.setBackground(Color.red);
    }//GEN-LAST:event_btnCloseMouseEntered

    private void btnCloseMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCloseMouseExited
        btnClose.setBackground(new Color(204,102,255));
    }//GEN-LAST:event_btnCloseMouseExited

    private void btnCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCloseActionPerformed
        new MenuUtama().setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_btnCloseActionPerformed

    private void panelHeaderMouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_panelHeaderMouseDragged

    }//GEN-LAST:event_panelHeaderMouseDragged

    private void panelHeaderMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_panelHeaderMousePressed

    }//GEN-LAST:event_panelHeaderMousePressed

    private void tabelBarangJadiMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tabelBarangJadiMouseClicked
        int baris = tabelBarangJadi.rowAtPoint(evt.getPoint());

        String kd_brg = tabelBarangJadi.getValueAt(baris, 1).toString();
        txtKode.setText(kd_brg);
    }//GEN-LAST:event_tabelBarangJadiMouseClicked

    private void btnCariMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCariMouseEntered
        btnCari.setBackground(new Color(0,0,204));
        btnCari.setForeground(Color.white);
    }//GEN-LAST:event_btnCariMouseEntered

    private void btnCariMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnCariMouseExited
        btnCari.setBackground(new Color(204,204,204));
        btnCari.setForeground(Color.black);
    }//GEN-LAST:event_btnCariMouseExited

    private void btnCariActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCariActionPerformed
        // TODO add your handling code here:
        try {
            Connection conn = (Connection)Koneksi.getKoneksi();
            String report = "/reports/LaporanStokBarangJadiPerKode.jasper";
            InputStream path = getClass().getResourceAsStream(report);
            HashMap hash = new HashMap();
            hash.put("ByKdBrg", txtKode.getText());;
            JasperPrint JPrint = JasperFillManager.fillReport(path, hash, conn);
            JasperViewer.viewReport(JPrint, false);
        } catch (JRException ex) {
            JOptionPane.showMessageDialog(null, "Gagal Cetak Laporan" + ex);
        }
    }//GEN-LAST:event_btnCariActionPerformed

    private void txtKodeKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtKodeKeyTyped

    }//GEN-LAST:event_txtKodeKeyTyped

    private void btnCetakActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCetakActionPerformed
        java.io.File reportFile = new java.io.File(".");
        String dirr = "";
        try {
            String sql = "SELECT * FROM tb_brg_jadi";        
            Connection conn = (Connection)Koneksi.getKoneksi();
            Statement stmt = conn.createStatement();
            dirr = reportFile.getCanonicalPath()+ "/src/reports/LaporanStokBarangJadi.jrxml";
            JasperDesign design = JRXmlLoader.load(dirr);
            JasperReport jr = JasperCompileManager.compileReport(design);
            ResultSet rs = stmt.executeQuery(sql);
            JRResultSetDataSource rsDataSource = new JRResultSetDataSource(rs);
            JasperPrint JPrint = JasperFillManager.fillReport(jr, new HashMap(), rsDataSource);
            JasperViewer.viewReport(JPrint, false);
        } catch (SQLException | IOException | JRException ex) {
            JOptionPane.showMessageDialog(null, "Gagal Cetak Laporan" + ex);
        }
    }//GEN-LAST:event_btnCetakActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
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
            java.util.logging.Logger.getLogger(LaporanStokBarangJadi.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(LaporanStokBarangJadi.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(LaporanStokBarangJadi.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(LaporanStokBarangJadi.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new LaporanStokBarangJadi().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCari;
    private javax.swing.JButton btnCetak;
    private javax.swing.JButton btnClose;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel labelNama;
    private javax.swing.JPanel panelHeader;
    private javax.swing.JTable tabelBarangJadi;
    private javax.swing.JTextField txtKode;
    // End of variables declaration//GEN-END:variables
}
