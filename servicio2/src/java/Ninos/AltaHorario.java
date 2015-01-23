package Ninos;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
public class AltaHorario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
    
        if (session.getAttribute("username") == null || session.getAttribute("permiso").equals("Administrador") == false) {
            response.sendRedirect("./index.jsp"); 
            return;
        }
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/darDeAltaH.jsp");
        disp.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
                
        String url = getServletContext().getInitParameter("url");
        String user = getServletContext().getInitParameter("user");
        String pass = getServletContext().getInitParameter("pass");
        
        HttpSession session = request.getSession();
        
        String dias = request.getParameter("dias");
        int horaE = Integer.parseInt(request.getParameter("horaE"));
        int minutoE = Integer.parseInt(request.getParameter("minutoE"));
        String meridianoE = request.getParameter("tiempoE");
        if (meridianoE.equals("pm")) {
            horaE = horaE + 12;
        } else {
        }
        Time h_ent = new Time(horaE, minutoE, 00);
        int horaS = Integer.parseInt(request.getParameter("horaS"));
        int minutoS = Integer.parseInt(request.getParameter("minutoS"));
        String meridianoS = request.getParameter("tiempoS");
        if (meridianoS.equals("pm")) {
            horaS = horaS + 12;
        } else {
        }
        Time h_sal = new Time(horaS, minutoS, 00);
        int id_nino = (int)session.getAttribute("matricula");
        String sql = "INSERT INTO Horario (dias,h_ent,h_salida,id_nino) VALUES (?,?,?,?);";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url,user,pass)) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, dias);
                    ps.setTime(2, h_ent);
                    ps.setTime(3, h_sal);
                    ps.setInt(4, id_nino);
                    ps.executeUpdate();
                }
                request.setAttribute("res", "El registro del horario fue exitoso!");
                doGet(request, response);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaHorario.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "true");
            request.setAttribute("res", "Lo sentimos, hubo un problema en registro, introduzca los datos nuevamente. Error: " + ex.getMessage());
            doGet(request, response);
        } 
    }
}
