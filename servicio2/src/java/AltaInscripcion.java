import java.io.IOException;
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
public class AltaInscripcion extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        int dia = Integer.parseInt(request.getParameter("dia"));
        int mes = Integer.parseInt(request.getParameter("mes"));
        int ano = Integer.parseInt(request.getParameter("ano"));
        Date fecha_ins = new Date(ano,mes,dia);
        String acta_nac = request.getParameter("acta_nac");
        String cartilla_vac = request.getParameter("cartilla");
        String curp = request.getParameter("curp");
        String aviso = request.getParameter("aviso");
        String reglamento = request.getParameter("reglamento");
        String ex_med = request.getParameter("medico");
        String boleta = request.getParameter("boleta");
        int id_nino = Integer.parseInt(request.getParameter("id_nino"));
        String sql = "INSERT INTO Inscripcion (id_nino,fecha_insc,acta_nac,cartilla_vac,curp,av_privacidad,reglamento,ex_med,boleta_calif) VALUES (?,?,?,?,?,?,?,?,?);";
        boolean st = false;
        try {
            Class.forName("con.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://servicio2020.caafufvdj2xl.us-west-2.rds.amazonaws.com/servicio2020", "servicio2020", "servicio2020")) {
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setInt(1, id_nino);
                    ps.setDate(2, fecha_ins);
                    ps.setString(3, acta_nac);
                    ps.setString(4, cartilla_vac);
                    ps.setString(5, curp);
                    ps.setString(6, aviso);
                    ps.setString(7, reglamento);
                    ps.setString(8, ex_med);
                    ps.setString(9, boleta);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        st = true;
                    }
                } finally {
                    con.close();
                }
                // Imprime si la ejecución de la query fue correcta, en caso de serlo, devuelve un string "res" diciento que la operacion fue exitosa.
                if (st) {
                    request.setAttribute("res", "El registro de la inscripci&oacute;n fue exitoso!");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/altaHorario.jsp");
                    rd.include(request, response);
                } else {
                    request.setAttribute("res", "Lo sentimos, hubo un problema al realizar el registro, introduzca los datos nuevamente");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/altaInscripcion.jsp");
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AltaInscripcion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}