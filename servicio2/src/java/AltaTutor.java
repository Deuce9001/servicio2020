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
        int id = Integer.parseInt(request.getParameter("id"));
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
        boolean st = false;
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement("INSERT INTO Tutor VALUES (?,?,?,?,?,?,?,?,?,?,?)")) {
                    ps.setInt(1, id);
                    ps.setString(2, nombre);
                    ps.setString(3, direccion);
                    ps.setInt(4, tel);
                    ps.setInt(5, cel);
                    ps.setInt(6, otro_tel);
                    ps.setString(7, parentesco);
                    ps.setString(8, edo_civil);
                    ps.setString(9, lugar_nac);
                    ps.setString(10, escolaridad);
                    ps.setString(11, correo_e);
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
                    session.setAttribute("res", session.getAttribute("nombre") + " registrado exitosamente!");
                    session.setAttribute("matricula", session.getAttribute("id"));
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/ninos.jsp");
                    rd.include(request, response);
                } else {
                    session.setAttribute("res", "Lo sentimos, ha ocurrido un error, introduza los datos nuevamente.");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/altaTutor.jsp");
                    rd.include(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaTutor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
