package MVC.Controleur;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javafx.util.Pair;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MVC.Modele.*;
import UserPattern.SERVICE.IMPL.ServicesImpl;

@WebServlet("/con_commande")
public class con_commande extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServicesImpl serv=null;

    public con_commande() {
        super();
    }
    
    @Override
	public void init() throws ServletException 
	{
		super.init();
		serv = new ServicesImpl();
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Client _client = (Client)request.getSession().getAttribute("client");
		if(_client==null)
			response.sendRedirect(request.getContextPath()+"/con_authentification");
		//Passer la commande:
		else
		{	
			if(request.getParameter("action") != null && !request.getParameter("action").equals(""))
			{	
				String action = request.getParameter("action");
				switch(action)
				{
					case "valider":
						ArrayList<Pair> cmdArticles=(ArrayList<Pair>)request.getSession().getAttribute("cmdArticles");
						boolean isPassed = serv.passerCommande(_client, cmdArticles);
						
						if(isPassed)
						{
							cmdArticles.removeAll(cmdArticles);
							request.getSession().setAttribute("cmdArticles", new ArrayList<Pair>());
							request.getSession().setAttribute("msg1", "Merci, votre commande est bien passée.");
							response.sendRedirect(request.getContextPath()+"/con_panier");
						}
						else
						{
							request.getSession().setAttribute("cmdArticles", cmdArticles);
							request.getSession().setAttribute("msg1", "Désolé, votre commande n'est pas passée.");
							response.sendRedirect(request.getContextPath()+"/con_panier");
						}
						break;
					
					case "voir":
						String codeCmd = request.getParameter("codeCommande");
						Commande commande = serv.getCommande(codeCmd);
						request.setAttribute("commande", commande);
						//request.setAttribute("liste_Cmd_Art", commande.getCmd_art());
						getServletContext().getRequestDispatcher("/WEB-INF/p_voirCommande2.jsp").forward(request, response);
						break;
				}
			}
			else
			{	
				request.setAttribute("mesCmd", serv.getCommandes(_client));
				getServletContext().getRequestDispatcher("/WEB-INF/p_commandes2.jsp").forward(request, response);
			}
		}			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		this.doGet(request, response);
	}

}
