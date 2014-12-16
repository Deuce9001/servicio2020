package Ninos;

import java.io.IOException;
import java.sql.Connection;
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

public class AltaInscripcion extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String acta_nac = request.getParameter("acta_nac");
        String cartilla_vac = request.getParameter("cartilla");
        String curp = request.getParameter("curp");
        String aviso = request.getParameter("aviso");
        String reglamento = request.getParameter("reglamento");
        String ex_med = request.getParameter("medico");
        String boleta = request.getParameter("boleta");
        String id = request.getParameter("id_nino");
        int id_nino = Integer.parseInt(id);
        String sql = "INSERT INTO Inscripcion (id_nino, fecha_insc, acta_nac, cartilla_vac, curp, av_privacidad, reglamento, ex_med, boleta_calif) "
                + "VALUES (?, NOW(), ?, ?, ?, ?, ?, ?, ?);";
        boolean st = false;
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", 
                    "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setInt(1, id_nino);
                    ps.setString(2, acta_nac);
                    ps.setString(3, cartilla_vac);
                    ps.setString(4, curp);
                    ps.setString(5, aviso);
                    ps.setString(6, reglamento);
                    ps.setString(7, ex_med);
                    ps.setString(8, boleta);
                    ps.executeUpdate();
                    request.setAttribute("res", "El registro de la inscripci&oacute;n fue exitoso!");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/inscripcion.jsp");
                    doGet(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaInscripcion.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "true");
            request.setAttribute("res", "Lo sentimos, hubo un problema al realizar el registro, introduzca los datos nuevamente");
            doGet(request, response);
        }
    }
}