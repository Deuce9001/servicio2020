package Eventos;

import Ninos.AltaHorario;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
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
public class AltaEvento extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String lugar = request.getParameter("lugar");
        int dia = Integer.parseInt(request.getParameter("dia"));
        int mes = Integer.parseInt(request.getParameter("mes"));
        int ano = Integer.parseInt(request.getParameter("ano"));
        Date fecha = new Date(ano, mes, dia);
        int horaI = Integer.parseInt(request.getParameter("horaI"));
        int minI = Integer.parseInt(request.getParameter("minI"));
        String meridianoI = request.getParameter("meridianoI");
        if (meridianoI.equals("pm")) {
            horaI = horaI + 12;
        } else {
        }
        Time h_inicio = new Time(horaI, minI, 00);
        int horaF = Integer.parseInt(request.getParameter("horaF"));
        int minF = Integer.parseInt(request.getParameter("minF"));
        String meridianoF = request.getParameter("meridianoF");
        if (meridianoF.equals("pm")) {
            horaF = horaF + 12;
        } else {
        }
        Time h_fin = new Time(horaF, minF, 00);
        String sql = "INSERT INTO Evento (nombre,descripcion,lugar,fecha,h_inicio,h_fin) VALUES (?,?,?,?,?);";
        boolean st = false;
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, nombre);
                    ps.setString(2, descripcion);
                    ps.setString(3, lugar);
                    ps.setTime(4, h_inicio);
                    ps.setTime(5, h_fin);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                        session.setAttribute("id", session.getAttribute("id"));
                    }
                }
                if (st) {
                    request.setAttribute("res", "El registro del horario del alumno " + session.getAttribute("nombre") + " fue exitoso!");
                    request.setAttribute("matricula", session.getAttribute("id"));
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/altaHistoriaClinica.jsp");
                    rd.include(request, response);
                } else {
                    request.setAttribute("res", "Lo sentimos, hubo un problema en registro, introduzca los datos nuevamente.");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/altaHorario.jsp");
                    rd.include(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaHorario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
