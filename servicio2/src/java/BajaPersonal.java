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

public class BajaPersonal extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        String estado = "inactivo";
        boolean st = false;
        String sql = "UPDATE Personal SET estado=? WHERE id=?;";
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, estado);
                    ps.setInt(2, id);
                    ResultSet rs = ps.executeQuery();
                    while(rs.next()) {
                        st = true;
                    }
                }
                if (st) {
                    request.setAttribute("res", "El ni&ntlde;o con la matr&iacute;cula " + session.getAttribute("id") + " ha sido dado de baja exitosamente.");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("ninos.jsp");
                    rd.include(request, response);
                } else {
                    request.setAttribute("res", "Lo sentimos, ha habido un error, ingrese los datos nuevamente.");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("BajaNino.jsp");
                    rd.include(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(BajaPersonal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
