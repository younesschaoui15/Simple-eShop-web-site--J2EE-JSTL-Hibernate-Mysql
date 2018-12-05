package MVC.Controleur;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MVC.Modele.*;
import UserPattern.SERVICE.IMPL.ServicesImpl;

@WebServlet("/con_store")
public class con_store extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServicesImpl serv = null;
	
    public con_store() {
        super();
    }

	public void init(ServletConfig config) throws ServletException 
	{
		serv = new ServicesImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		Client _client = (Client)request.getSession().getAttribute("client");
		if(_client==null)
			response.sendRedirect(request.getContextPath()+"/con_authentification");
//			request.getRequestDispatcher("/con_authentification").forward(request, response);
		else
		{
			request.setAttribute("msg", "BIENVENUE Mr/Mme <strong>"+_client.getPrenom()+" "+_client.getNom()+"</strong> dans votre espace e-shop.");
			
			//envoi des articles pour l'affichage ===>
			List<Article> listeAticles = serv.getArticles();
			request.setAttribute("listeArticles", listeAticles);
			
			request.getRequestDispatcher("/WEB-INF/p_store2.jsp").forward(request, response);
		}
	}

}
