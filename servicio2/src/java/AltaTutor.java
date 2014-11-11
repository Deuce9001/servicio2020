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
public class AltaTutor extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String nombre = request.getParameter("nombre");
        String direccion = request.getParameter("direccion");
        int tel = Integer.parseInt(request.getParameter("tel"));
        int cel = Integer.parseInt(request.getParameter("cel"));
        int otro_tel = Integer.parseInt(request.getParameter("otro_tel"));
        String parentesco = request.getParameter("parentesco");
        String edo_civil = request.getParameter("edo_civil");
        String lugar_nac = request.getParameter("lugar-nac");
        String escolaridad = request.getParameter("escolaridad");
        String correo_e = request.getParameter("correo_e");
        String sql = "INSERT INTO Tutor (nombre,direccion,tel,cel,otro_cel,prentesco,edo_civil,lugar_nac,escolaridad,correo_e) VALUES (?,?,?,?,?,?,?,?,?,?);";
        boolean st = false;
        try {
            Class.forName("con.mysql.jdbc.Driver");
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
                    ps.setString(9, escolaridad);
                    ps.setString(10, correo_e);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                        session.setAttribute("nombre", session.getAttribute("nombre"));
                        session.setAttribute("id", session.getAttribute("id"));
                    }
                } finally {
                    con.close();
                }
                if (st) {
                    request.setAttribute("res", session.getAttribute("nombre") + " registrado exitosamente!");
                    request.setAttribute("matricula", session.getAttribute("id"));
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/ninos.jsp");
                    rd.include(request, response);
                } else {
                    request.setAttribute("res", "Lo sentimos, ha ocurrido un error, introduza los datos nuevamente.");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/altaTutor.jsp");
                    rd.include(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaTutor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
