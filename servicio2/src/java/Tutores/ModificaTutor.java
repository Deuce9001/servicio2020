package Tutores;

import Personal.ModificaPersonal;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author David
 */
public class ModificaTutor extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String direccion = request.getParameter("direccion");
        int tel = Integer.parseInt(request.getParameter("tel"));
        int cel= Integer.parseInt(request.getParameter("cel"));
        int otro_tel = Integer.parseInt(request.getParameter("otro_tel"));
        String parentesco = request.getParameter("parentesco");
        String edo_civil = request.getParameter("edo_civil");
        int ano = Integer.parseInt(request.getParameter("ano"));
        int mes = Integer.parseInt(request.getParameter("mes"));
        int dia = Integer.parseInt(request.getParameter("dia"));
        java.sql.Date fecha_nac;
        fecha_nac = new java.sql.Date(ano,mes,dia);
        String lugar_nac = request.getParameter("lugar_nac");
        String escolaridad = request.getParameter("escolaridad");
        String correo_e = request.getParameter("correo_e");
        String estatus = request.getParameter("estatus");
        boolean st = false;
        String sql = "UPDATE Tutor SET nombre=?, direccion=?, tel=?, cel=?, otro_tel=?, parentesco=?, edo_civil=?, lugar_nac=?, fecha_nac=?, escolaridad=?, correo_e=?, estatus=? "
                + "WHERE id=?;";
        try {
            Class.forName("con.mysql.jdbc.Diver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, nombre);
                    ps.setString(2, direccion);
                    ps.setInt(3, tel);
                    ps.setInt(4, cel);
                    ps.setInt(5, otro_tel);
                    ps.setString(6, parentesco);
                    ps.setString(7, edo_civil);
                    ps.setString(8, lugar_nac);
                    ps.setDate(9, fecha_nac);
                    ps.setString(10, escolaridad);
                    ps.setString(11, correo_e);
                    ps.setString(12, estatus);
                    ps.setInt(13, id);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                    }
                }
                if (st) {
                    request.setAttribute("res", "Ingrese el id del personal que desee modificar: ");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("modificarP.jsp");
                    rd.include(request, response);
                } else {
                    request.setAttribute("res", "No se ha encontrado el nombre del personal que desea modificar, ingrese nuevamente el nombre");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("modificarP.jsp");
                    rd.include(request, response);
                } 
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ModificaPersonal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
