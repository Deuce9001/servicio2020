package Ninos;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AltaNino extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        if (session.getAttribute("username") == null || session.getAttribute("permiso").equals("Administrador") == false) {
            response.sendRedirect("../index"); 
            return;
        }
        RequestDispatcher disp = getServletContext().getRequestDispatcher("/darDeAlta.jsp");
        disp.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        
        String url = getServletContext().getInitParameter("url");
        String user = getServletContext().getInitParameter("user");
        String pass = getServletContext().getInitParameter("pass");
        
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String nombreCompleto = nombre + " " + apellidos;
        int dia = Integer.parseInt(request.getParameter("dia"));
        int mes = Integer.parseInt(request.getParameter("mes"));
        int ano = Integer.parseInt(request.getParameter("ano"));
        String sexo = request.getParameter("sexo");
        String direccion = request.getParameter("direccion");
        int tel = Integer.parseInt(request.getParameter("telefono"));
        String grado_escolar = request.getParameter("grado_escolar");
        String programa = request.getParameter("programa");
        InputStream foto = new ByteArrayInputStream(request.getParameter("foto").getBytes(StandardCharsets.UTF_8));
        String alergias = request.getParameter("alergias");
        
        String sql = "INSERT INTO Nino "
                + "(nombre,fecha_nac,sexo,direccion,tel,grado_escolar,programa,foto,alergias,estado) "
                + "VALUES (?,?,?,?,?,?,?,?,?,?);";
        
        Date fecha_nac = new Date(ano,mes,dia);
        
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url,user,pass)) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1, nombreCompleto);
                    ps.setDate(2, fecha_nac);
                    ps.setString(3, sexo);
                    ps.setString(4, direccion);
                    ps.setInt(5, tel);
                    ps.setString(6, grado_escolar);
                    ps.setString(7, programa);
                    ps.setBlob(8, foto);
                    ps.setString(9, alergias);
                    ps.setString(10, "activo");
                    ps.executeUpdate();
                    int id = (int) Statement.RETURN_GENERATED_KEYS;
                    session.setAttribute("matricula", id);
                }
                request.setAttribute("res", "El alumno " + nombre + " con matricula " + session.getAttribute("matricula") + "registrado exitosamente!");
                doGet(request,response);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaNino.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "true");
            request.setAttribute("res", "Ingrese nuevamente los datos, ha habido un problema para realizar el registro");
            doGet(request, response);
        }
    }
}
