package MVC.Controleur;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javafx.util.Pair;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MVC.Modele.Article;
import MVC.Modele.Client;
import UserPattern.SERVICE.IMPL.ServicesImpl;

@WebServlet("/con_article")
public class con_article extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServicesImpl serv=null;
    
    public con_article() {
        super();
        // TODO Auto-generated constructor stub
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
			response.sendRedirect( request.getContextPath()+"/con_authentification");
		else
		{	
			//Si l'article n'existe pas.
			if(request.getParameter("codeArticle") == null || request.getParameter("codeArticle").equals(""))
				response.sendRedirect(request.getContextPath()+"/con_store");
			else
			{	
				int code = Integer.valueOf(request.getParameter("codeArticle"));
				Article art = serv.getArticle(code);
				
				String action = request.getParameter("action");
				switch(action)
				{	
					case "voir":
						request.setAttribute("article", art);
				        getServletContext().getRequestDispatcher("/WEB-INF/p_voirArticle2.jsp").forward(request, response);
						break;
						
					case "ajouterAuPanier":
						List<Pair> cmdArticles = (ArrayList<Pair>) request.getSession().getAttribute("cmdArticles");
//						String qttDiv = request.getParameter("quantiteCommandee");
//						System.out.println("#==> "+qttDiv);
//						int qtt = Integer.valueOf(qttDiv.substring(qttDiv.indexOf('>')+1, qttDiv.lastIndexOf('<')));
						int qtt = Integer.valueOf(request.getParameter("quantiteCommandee"));
						System.out.println("code: "+code+"  qtt: "+qtt);
						/** VEREFIER SI L'ARTICLE EXISTE **/
						cmdArticles.add(new Pair(art, qtt));
						
//						cmdArticles.add(art);
						request.getSession().setAttribute("cmdArticles", cmdArticles);
						request.setAttribute("article", art);
						request.setAttribute("quantiteCommandee", qtt);
						response.sendRedirect(request.getContextPath()+"/con_article?codeArticle="+code+"&action=voir");
//				        getServletContext().getRequestDispatcher("/WEB-INF/p_voirArticle2.jsp").forward(request, response);
						break;
				}
				
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

}
