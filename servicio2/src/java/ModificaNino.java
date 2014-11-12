/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author David
 */
public class ModificaNino extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String nombreCompletoReq = request.getParameter("nombreCompleto");
        int id = Integer.parseInt(request.getParameter("id"));
        String seleccion = request.getParameter("seleccion");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String nombreCompletoRes = nombre + apellido;
        int dia = Integer.parseInt(request.getParameter("dia"));
        int mes = Integer.parseInt(request.getParameter("mes"));
        int ano = Integer.parseInt(request.getParameter("ano"));
        Date fecha_nac = new Date(ano,mes,dia);
        String sexo = request.getParameter("sexo");
        String direccion = request.getParameter("direccion");
        int tel = Integer.parseInt(request.getParameter("tel"));
        String grado_escolar = request.getParameter("grado_escolar");
        String programa = request.getParameter("programa");
        InputStream foto = new ByteArrayInputStream(request.getParameter("foto").getBytes(StandardCharsets.UTF_8));
        String alergias = request.getParameter("alergias");
        
        String sqlNombre = "UPDATE Nino SET nombre=? WHERE id=?;";
        String sqlApellido = "UPDATE Nino SET nombre=? WHERE id=?";
        String sqlSexo = "UPDATE Nino SET sexo=? WHERE id=?";
        String sqlFechaNac = "UPDATE Nino SET fecha_nac=? WHERE id=?";
        String sqlDireccion = "UPDATE Nino SET direccion=? WHERE id=?";
        String sqlTel = "UPDATE Nino SET tel=? WHERE id=?";
        String sqlGradoEscolar = "UPDATE Nino SET grado_escolar=? WHERE id=?";
        String sqlPrograma = "UPDATE Nino SET programa=? WHERE id=?";
        String sqlFoto = "UPDATE Nino SET foto=? WHERE id=?";
        String sqlAlergias = "UPDATE Nino SET alergias=? WHERE id=?";
        
        try {
            Class.forName("con.mysql,jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                if (session.getAttribute("seleccion").equals("nombre")) {
                    try (PreparedStatement ps = con.prepareStatement(sqlNombre)) {
                        request.setAttribute("res", "Ingrese el nombre: ");
                    }
                } 
            } 
        } catch (ClassNotFoundException |SQLException ex) {
            
        }
    }
}