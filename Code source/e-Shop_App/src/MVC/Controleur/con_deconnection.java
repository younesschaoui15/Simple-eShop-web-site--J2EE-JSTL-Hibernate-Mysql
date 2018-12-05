package MVC.Controleur;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class con_deconnection
 */
@WebServlet("/con_deconnection")
public class con_deconnection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public con_deconnection() {
        super();
    }
    
	public void init(ServletConfig config) throws ServletException 
	{
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		if(request.getSession().getAttribute("client") != null)
		{
			request.setAttribute("msgDeconnection", "Merci pour votre visite, vous serez toujours la bienvenue chez nous.");
			request.getSession().removeAttribute("client");
			response.sendRedirect(request.getContextPath()+"/con_index");

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		this.doGet(request, response);
	}

}
