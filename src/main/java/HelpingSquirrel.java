import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(urlPatterns = "/squirrel")
public class HelpingSquirrel extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) {
        try {
            PrintWriter out = res.getWriter();
            out.println("Squirrel helps!");
        } catch (IOException e) {
            e.printStackTrace();
        }


    }
}