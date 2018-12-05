package MVC.Controleur;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javafx.util.Pair;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MVC.Modele.*;
import UserPattern.SERVICE.IMPL.ServicesImpl;

/**
 * Servlet implementation class con_authentification
 */
@WebServlet("/con_authentification")
public class con_authentification extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServicesImpl serv = null;
	
    public con_authentification() {
        super();
    }

	public void init(ServletConfig config) throws ServletException 
	{
		super.init(config);
		serv = new ServicesImpl();
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		request.getSession().setAttribute("client", null);
		String _user = request.getParameter("username");
		String _pw = request.getParameter("password");
		Client _client = null; 
		
		if(_user!=null && _pw!=null)
		{
			Client client = new Client(_user, _pw, null, null, null, null);
			_client = serv.authClient(client);
		}

		if(_client!=null)
		{	
			request.getSession().setAttribute("client", _client);
			request.getSession().setAttribute("cmdArticles", new ArrayList<Pair>());			
			//getServletContext().getRequestDispatcher("/con_store").forward(request, response);
			response.sendRedirect( request.getContextPath()+"/con_store");

		}
		else
		{	
			if(_user!=null && _pw!=null)
				request.setAttribute("messageAuth", "Authentification refusée! vérifiez vos informations.");
			request.getRequestDispatcher("/WEB-INF/p_auth2.jsp").forward(request, response);
		}
	}

}
