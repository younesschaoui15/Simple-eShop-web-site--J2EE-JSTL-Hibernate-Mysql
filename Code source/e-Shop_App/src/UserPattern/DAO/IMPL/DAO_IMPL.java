package UserPattern.DAO.IMPL;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javafx.util.Pair;
import Hibernate.hibernateUtil;

import org.hibernate.Session;

import MVC.Modele.*;
import UserPattern.DAO.DAO;

public class DAO_IMPL implements DAO
{
	/************************************** CLIENT **************************************/
	@Override
	public boolean createClient(Client client) 
	{	
		Session session = hibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		Client c = session.byNaturalId(Client.class).using("nomutilisateur",client.getNomutilisateur()).load();
		//int nb = session.createQuery( "from Client WHERE nomutilisateur LIKE "+client.getNomutilisateur()).list().size();
		
		if(c==null)
		//if(nb==0)
		{	
			session.save(client);
			session.getTransaction().commit();
			session.close();
		}
		else
			return false;
		
		return true;
	}

	@Override
	public boolean isExist(Client client) 
	{	
		Session session = hibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		int nb = session.createQuery("from Client WHERE nomutilisateur='"+client.getNomutilisateur()+"'"+
									 " AND motdepasse='"+client.getMotdepasse()+"'").list().size();
		session.close();
		if(nb==1)
			return true;
		else
			return false;
	}
	
	
	/************************************** ARTICLE **************************************/
	@Override
	public ArrayList<Article> getArticles() 
	{
		Session session = hibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		ArrayList<Article> arts = (ArrayList<Article>) session.createQuery("from Article").list();
		session.close();
		
		return arts;
	}

	@Override
	public Article getArticleByCode(int code) 
	{
		Session session = hibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		Article art = session.get(Article.class, code);
		session.close();
		
		return art;
	}

	/************************************** COMMANDE **************************************/
	@Override
	public int getNbCmdByYear(String year) 
	{
		Session session = hibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		int nb = session.createQuery("from Commande WHERE date>='"+year+"-01-01'"+
				 					 " AND date<='"+year+"-12-31'").list().size();
		session.close();
		
		return nb;
	}

	@Override
	public boolean validateCommande(Client client, ArrayList<Pair> articles)
	{	
		try
		{
			Session session = hibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			
			//La commande courante:
			Commande commande = new Commande(LocalDate.now()); //création de la commande
			List<Cmd_Art> contenuCommande = new ArrayList<Cmd_Art>(); //création du contenu
			double montantHT=0D;
			
			for (Pair art_qtt : articles) 
			{
				Article article = (Article) art_qtt.getKey();
				int qtt = (int) art_qtt.getValue();
				
				Cmd_Art cmd_art = new Cmd_Art(commande, article, qtt);
				contenuCommande.add(cmd_art);
				/** decrémenter la quantite de l'article **/
				article.setQuantite(article.getQuantite()-qtt);
				/** Calcule du montant **/
				montantHT+=article.getPrix()*qtt;
				/** mise à jour des articles [la quantité] **/
				//session.evict(article);
				session.update(article);
				//session.createQuery("update Article set quantite=quantite-1 where code="+art.getCode()).executeUpdate();
			}
			/** enregistrement du montant **/
			commande.setMontant(montantHT);
			
//			for (Article art : articles)
//			{	
//				//Article article = session.get(Article.class, art.getCode());
//				Cmd_Art cmd_art = new Cmd_Art(commande, art, 1);
//				contenuCommande.add(cmd_art);
//				/** decrémenter la quantite de l'article **/
//				art.setQuantite(art.getQuantite()-1);
//				/** Calcule du montant **/
//				montantHT+=art.getPrix();
//				/** mise à jour des articles [la quantité] **/
//				session.createQuery("update Article set quantite=quantite-1 where code="+art.getCode()).executeUpdate();
//			}
			
			/** sauvegarde de la nouvelle commande */
			session.save(commande);
			
			for (Cmd_Art cmd_art : contenuCommande)
			{	
				/** Sauvegarde du contenu de la commande **/
				session.save(cmd_art);
				/** [ajout des articles à la commande] **/
				commande.getCmd_art().add(cmd_art);
				//cmd_Art.getCmd_Art_PK().getArticle().getCmd_art().add(cmd_Art);  ERROR ?
			}
			//System.out.println("=>nb cmd par cet art :"+articles.get(0).getCmd_art().size()); ERROR ?
			
			/**** Sauvegarde des modifications : ****/
			
//			/** mise à jour des articles [la quantité] */
//			for (Article art : articles)
//				session.update(art);
			
//			/** [ajout des articles à la commande] [ajout de la commande aux articles] */
//			for (Cmd_Art cmd_art : contenuCommande)
//				session.save(cmd_art);
			
			/** Ajouter la commande au client */
			client.getCommandes().add(commande);
			/** mise à jour du client [l'ajout d'une commande] */
			session.update(client);			
			/** mise à jour de la nouvelle commande */
			commande.setClient(client);
			
			session.getTransaction().commit();
			session.close();
			
			return true;
		}
		catch(Exception e)
		{	
			System.out.println("###Exception MSG => "+e.getMessage());
			return false;
		}
		
	}

	@Override
	public List<Commande> getCommandesByClient(Client client) 
	{	
		Session session = hibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		List<Commande> cmds = client.getCommandes();
//		session.getTransaction().commit();
		session.close();
		return cmds;
	}

	@Override
	public Commande getCommandeByCode(String codeCmd) 
	{
		Session session = hibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		Commande cmd = session.get(Commande.class, codeCmd);
		session.getTransaction().commit();
		session.close();
		return cmd;
	}

}
