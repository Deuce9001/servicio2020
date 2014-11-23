package Personal;

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

/**
 *
 * @author David
 */
public class AltaPersonal extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String nombre = request.getParameter("nom");
        String apellido = request.getParameter("apellido");
        String nombreCompleto = nombre + apellido;
        String direccion = request.getParameter("direccion");
        int tel = Integer.parseInt("tel");
        int cel = Integer.parseInt(request.getParameter("cel"));
        String posicion = request.getParameter("posicion");
        String curriculum = request.getParameter("curriculum");
        String actividades = request.getParameter("actividades");
        String estatus = request.getParameter("estatus");
        String tipo = request.getParameter("tipo");
        String sql = "INSERT INTO Personal (nombre,direccion,tel,cel,posicion,curriculum,actividades,estatus,tipo ) VALUES (?,?,?,?,?,?,?,?,?);";
        boolean st = false;
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, nombreCompleto);
                    ps.setString(2, direccion);
                    ps.setInt(3, tel);
                    ps.setInt(4, cel);
                    ps.setString(5, posicion);
                    ps.setString(6, curriculum);
                    ps.setString(7, actividades);
                    ps.setString(8, estatus);
                    ps.setString(9, tipo);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                        session.setAttribute("nombre", session.getAttribute("nombre"));
                        session.setAttribute("id", session.getAttribute("id"));
                    }
                }
                if (st) {
                    session.setAttribute("res", session.getAttribute(nombre) + " agregado exitosamente");
                    session.setAttribute("matricula", session.getAttribute("id"));
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/personal.jsp");
                    rd.include(request, response);
                } else {
                    session.setAttribute("res", "Lo sentimos, hubo un error en el sistema, ingrese los datos de nuevo");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/altaPersonal.jsp");
                    rd.include(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaPersonal.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
