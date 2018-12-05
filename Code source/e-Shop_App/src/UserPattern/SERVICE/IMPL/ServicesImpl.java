package UserPattern.SERVICE.IMPL;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javafx.util.Pair;

import org.hibernate.Session;

import Hibernate.hibernateUtil;
import MVC.Modele.Article;
import MVC.Modele.Client;
import MVC.Modele.Commande;
import UserPattern.DAO.IMPL.DAO_IMPL;
import UserPattern.SERVICE.Services;

public class ServicesImpl implements Services
{

	@Override
	public boolean enregistrerClient(Client client) 
	{	
		DAO_IMPL dao = new DAO_IMPL();
		return dao.createClient(client);
	}

	@Override
	public Client authClient(Client client)
	{	
		DAO_IMPL dao = new DAO_IMPL();
		if(dao.isExist(client))
		{	
			Session session = hibernateUtil.getSessionFactory().openSession();
			//session.beginTransaction();
			Client cl = (Client) session.createQuery( "from Client WHERE nomutilisateur='"+client.getNomutilisateur()+"'"+
										              " AND motdepasse='"+client.getMotdepasse()+"'").uniqueResult();
			session.close();
			return cl;
		}
		else
			return null;
	}

	@Override
	public List<Article> getArticles() 
	{
		DAO_IMPL dao = new DAO_IMPL();
		return dao.getArticles();
	}

	@Override
	public Article getArticle(int code) 
	{
		DAO_IMPL dao = new DAO_IMPL();
		return dao.getArticleByCode(code);
	}

	@Override
	public int getNumberCmdByYear(String date)
	{
		DAO_IMPL dao = new DAO_IMPL();
		return dao.getNbCmdByYear(date);
	}

	@Override
	public boolean passerCommande(Client client, ArrayList<Pair> articles) 
	{
		DAO_IMPL dao = new DAO_IMPL();
		return dao.validateCommande(client, articles);
	}

	@Override
	public List<Commande> getCommandes(Client client) 
	{
		DAO_IMPL dao = new DAO_IMPL();
		return dao.getCommandesByClient(client);
	}
	
	@Override
	public Commande getCommande(String codeCmd) 
	{	
		DAO_IMPL dao = new DAO_IMPL();
		return dao.getCommandeByCode(codeCmd);
	}

}
