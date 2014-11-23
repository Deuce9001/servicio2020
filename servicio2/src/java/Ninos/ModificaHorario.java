package Ninos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
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
public class ModificaHorario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String dias = request.getParameter("dias");
        int horaE = Integer.parseInt(request.getParameter("horaE"));
        int minutoE = Integer.parseInt(request.getParameter("minutoE"));
        Time h_ent = new Time(horaE, minutoE, 00);
        int horaS = Integer.parseInt(request.getParameter("horaS"));
        int minutoS = Integer.parseInt(request.getParameter("minutoS"));
        Time h_salida = new Time(horaS, minutoS, 00);
        String nombre = request.getParameter("nombre");
        boolean st = false;
        String sql = "UPDATE Horario SET dias=?, h_ent=?, h_salida=? WHERE id_nino = (SELECT id FROM Nino WHERE nombre LIKE ?);";
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, dias);
                    ps.setTime(2, h_ent);
                    ps.setTime(3, h_salida);
                    ps.setString(4, nombre);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                    }
                }
                if (st) {
                    request.setAttribute("res", "El horario del alumno " + session.getAttribute("nombre") + " ha sido modificado existosamente!");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("ModificaHorario.jsp");
                    rd.include(request, response);
                } else {
                    request.setAttribute("res", "Lo sentimos, ha ocurrido un error, ingrese los datos nuevamente.");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("ModificaHorario.jsp");
                    rd.include(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ModificaHorario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
