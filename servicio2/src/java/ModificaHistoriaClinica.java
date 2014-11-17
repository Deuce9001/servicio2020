import java.io.IOException;
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
        String enfermedades = request.getParameter("enfermedades");
        float peso = Float.parseFloat(request.getParameter("peso"));
        float estatura = Float.parseFloat(request.getParameter("estatura"));
        String medicamento = request.getParameter("medicamento");
        String tipo_sanguineo = request.getParameter("tipo_sanguineo");
        String nombre = request.getParameter("nombre");
        boolean st = false;
        String sql = "UPDATE HistoriaClinica SET enfermedades=?, peso=?, estatura=?, medicamento=?, tipo_sanguineo=? WHERE id_nino = (SELECT id FROM Nino WHERE nombre LIKE ?);";
        
    }

}
