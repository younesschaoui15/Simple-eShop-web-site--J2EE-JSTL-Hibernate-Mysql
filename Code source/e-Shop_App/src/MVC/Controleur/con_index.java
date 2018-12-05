package MVC.Controleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({ "/con_index", "/" })
public class con_index extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
 
    public con_index() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		if(request.getAttribute("msgDeconnection") != null)
			request.setAttribute("msgDeconnection", request.getAttribute("msgDeconnection"));
		request.setAttribute("root", request.getServletContext().getRealPath("/"));
		getServletContext().getRequestDispatcher("/index2.jsp").forward(request, response);
	}

}
