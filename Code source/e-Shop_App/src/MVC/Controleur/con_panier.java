package MVC.Controleur;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javafx.util.Pair;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MVC.Modele.Article;
import MVC.Modele.Client;
import MVC.Modele.Commande;
import UserPattern.SERVICE.IMPL.ServicesImpl;


@WebServlet("/con_panier")
public class con_panier extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ServicesImpl serv = null;
    
    public con_panier() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		serv = new ServicesImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Client _client = (Client)request.getSession().getAttribute("client");
		if(_client==null)
			response.sendRedirect(request.getContextPath()+"/con_authentification");
		else
		{	
			List<Pair> cmdArticles = (ArrayList<Pair>) request.getSession().getAttribute("cmdArticles");
			
			if(request.getParameter("action") != null)
			{	
				String action = request.getParameter("action");
				switch(action)
				{
					case "supprimer":
						int code = Integer.valueOf(request.getParameter("codeArticle"));
						for (Pair art_qtt : cmdArticles)
							if( ((Article)art_qtt.getKey()).getCode() == code)
							{	
								cmdArticles.remove(art_qtt);
								break;
							}
							
//						for (Article a : cmdArticles)
//							if(a.getCode()==code)
//							{	
//								cmdArticles.remove(a);
//								break;
//							}
						break;
					case "vider":
						cmdArticles.removeAll(cmdArticles);
						break;
				}
				request.getSession().setAttribute("cmdArticles", cmdArticles);
				response.sendRedirect(request.getContextPath()+"/con_panier");
			}
			else
			{	
				if(request.getSession().getAttribute("msg1") != null)
				{
					request.setAttribute("msg1", request.getSession().getAttribute("msg1"));
					request.getSession().removeAttribute("msg1");
				}
				request.setAttribute("panier", cmdArticles);
				double montantHT=0D;
//				for (Article a : cmdArticles)
//					montantHT+=a.getPrix();
				for (Pair art_qtt : cmdArticles)
					montantHT+= ((Article)art_qtt.getKey()).getPrix()*(int)art_qtt.getValue();

					request.setAttribute("montantHT", montantHT);
				getServletContext().getRequestDispatcher("/WEB-INF/p_voirPanier2.jsp").forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		this.doGet(request, response);
	}

}
