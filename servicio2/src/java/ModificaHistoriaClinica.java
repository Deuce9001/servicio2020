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
public class ModificaHistoriaClinica extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        String enfermedades = request.getParameter("enfermedades");
        float peso = Float.parseFloat(request.getParameter("peso"));
        float estatura = Float.parseFloat(request.getParameter("estatura"));
        String medicamento = request.getParameter("medicamento");
        String tipo_sanguineo = request.getParameter("tipo_sanguineo");
        boolean st = false;
        String sql = "UPDATE HistoriaClinica SET enfermedades=?, peso=?, estatura=?, medicamento=?, tipo_sanguineo=? WHERE id_nino=?;";
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, enfermedades);
                    ps.setFloat(2, peso);
                    ps.setFloat(3, estatura);
                    ps.setString(4, medicamento);
                    ps.setString(5, tipo_sanguineo);
                    ps.setInt(6, id);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                    }
                }
                if (st) {
                    request.setAttribute("res", "La historia clinica del alumno con matr&iacute;la " + session.getAttribute("id") + " ha sido modificada exitosamente!");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("ninos.jsp");
                    rd.include(request, response);
                } else {
                    request.setAttribute("res", "Lo sentimos, ha ocurrido un error, ingrese nuevamente los datos");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("ninos.jsp");
                    rd.include(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ModificaHistoriaClinica.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

}
