package MVC.Controleur;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MVC.Modele.*;
import UserPattern.SERVICE.IMPL.ServicesImpl;

@WebServlet("/con_enregistement")
public class con_enregistement extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	ServicesImpl serv=null;
	
    public con_enregistement() {
        super();
    }
	public void init(ServletConfig config) throws ServletException 
	{	
		super.init(config);
		serv = new ServicesImpl();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String user = request.getParameter("username");
		String pw = request.getParameter("password");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String ville = request.getParameter("ville");
		String adresse = request.getParameter("adresse");
		
		Client client = new Client(user, pw, nom, prenom, adresse, ville);
		boolean isit = serv.enregistrerClient(client);
		String msg = "";
		
		if(isit)
		{	
			msg="Compte crée avec succes, BIENVENUE dans votre espace e-shop.";
			request.setAttribute("message", msg);
			this.getServletContext().getRequestDispatcher("/WEB-INF/p_auth2.jsp").forward(request, response);
		}
		else
		{	
			msg="Compte n'est pas crée. utilisateur existe déjà.";
			request.setAttribute("message2", msg);
			this.getServletContext().getRequestDispatcher("/WEB-INF/p_auth2.jsp").forward(request, response);
		}

	}

}
