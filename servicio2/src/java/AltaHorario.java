import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.ResultSet;
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
public class AltaHorario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        String dias = request.getParameter("dias");
        int horaE = Integer.parseInt(request.getParameter("hora_entrada"));
        int minutoE = Integer.parseInt(request.getParameter("minuto_entrada"));
        String meridianoE = request.getParameter("meridiano_entrada");
        if (meridianoE.equals("pm")) {
            horaE = horaE + 12;
        } else {
        }
        Time h_ent = new Time(horaE, minutoE, 00);
        int horaS = Integer.parseInt(request.getParameter("hora_salida"));
        int minutoS = Integer.parseInt(request.getParameter("minuto_salida"));
        String meridianoS = request.getParameter("meridiano_entrada");
        if (meridianoS.equals("pm")) {
            horaS = horaS + 12;
        } else {
        }
        Time h_sal = new Time(horaS, minutoS, 00);
        int id_nino = Integer.parseInt(request.getParameter("id_nino"));
        boolean st = false;
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement("INSERT INTO Horario VALUES (?,?,?,?,?)")) {
                    ps.setInt(1, id);
                    ps.setString(2, dias);
                    ps.setTime(3, h_ent);
                    ps.setTime(4, h_sal);
                    ps.setInt(5, id_nino);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                    }
                }
                if (st) {
                    session.setAttribute("res", "El registro del horario fue exitoso!");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/altaHistoriaClinica.jsp");
                    rd.include(request, response);
                } else {
                    session.setAttribute("res", "Lo sentimos, hubo un problema en registro, introduzca los datos nuevamente.");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/altaHorario.jsp");
                    rd.include(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaHorario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
