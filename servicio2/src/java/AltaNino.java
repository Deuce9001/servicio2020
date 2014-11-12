import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.Date;
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
public class AltaNino extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String nombreCompleto = nombre + " " + apellidos;
        int dia = Integer.parseInt(request.getParameter("dia"));
        int mes = Integer.parseInt(request.getParameter("mes"));
        int ano = Integer.parseInt(request.getParameter("ano"));
        String sexo = request.getParameter("sexo");
        String direccion = request.getParameter("direccion");
        int tel = Integer.parseInt(request.getParameter("tel"));
        String grado_escolar = request.getParameter("grado_escolar");
        String programa = request.getParameter("programa");
        InputStream foto = new ByteArrayInputStream(request.getParameter("foto").getBytes(StandardCharsets.UTF_8));
        String alergias = request.getParameter("alergias");
        boolean st = false;
        String sql = "INSERT INTO Nino (nombre,fecha_nac,sexo,direccion,tel,grado_escolar,programa,foto,alergias) VALUES (?,?,?,?,?,?,?,?,?);";
        Date fecha_nac = new Date(ano,mes,dia);
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
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
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/inscripcion.jsp");
                    rd.include(request,response);
                } else {
                    request.setAttribute("res", "Ingrese nuevamente los datos, ha habido un problema para realizar el registro");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/darDeAlta.jsp");
                    rd.include(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
        Logger.getLogger(AltaNino.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
