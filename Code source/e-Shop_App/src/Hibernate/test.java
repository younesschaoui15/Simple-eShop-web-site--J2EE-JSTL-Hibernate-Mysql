package Hibernate;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import MVC.Modele.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

import MVC.Modele.Cmd_Art;
import MVC.Modele.Commande;

public class test {

	public static void main(String[] args) 
	{	
//		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure().build();
//		SessionFactory factory = new MetadataSources(ssr).buildMetadata().buildSessionFactory();
//		Session session = factory.getSessionFactory().openSession();
		Session session = hibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
//		/* Les produits dans le supèrmaché */
//		Produit produit1 = new Produit("p1", 11.2, 212);
//		Produit produit2 = new Produit("p2", 23.65, 400);
//		/* Le client YOUNESS */
//		Client client1 =new Client("youness");
//		
//		/* Les commandes de youness */
//		Commande commande1 = new Commande(LocalDate.now());
//		Commande commande2 = new Commande(LocalDate.now());
//		client1.getCommandes().add(commande1);
//		client1.getCommandes().add(commande2);
//		commande1.setClient(client1);
//		commande2.setClient(client1);
//		
//		Contient[] conCmd1 = new Contient[2]; 
//		conCmd1[0] = new Contient(commande1, produit1, 2);
//		conCmd1[1] = new Contient(commande1, produit2, 3);
//		
//		commande1.getContients().add(conCmd1[0]);
//		commande1.getContients().add(conCmd1[1]);
//		produit1.getContients().add(conCmd1[0]);
//		produit2.getContients().add(conCmd1[1]);
//		
//		Contient conCmd2 = new Contient(commande2, produit2, 5); 
//		
//		commande2.getContients().add(conCmd2);
//		produit2.getContients().add(conCmd2);
//		
//		session.save(produit1);
//		session.save(produit2);
//		session.save(client1);
//		session.save(commande1);
//		session.save(commande2);
//		for (Contient c : conCmd1) {
//			session.save(c);
//		}
//		session.save(conCmd2);
		
		
		
		/* TEST */
//		@SuppressWarnings("deprecation")
//		Query q = session.createSQLQuery("select prd.code_prd, prd.prix_prd, con.quantite_contient "
//									   + "from tab_produit as prd, contient as con"
//									   + "where prd.code_prd=con.code_produit and con.ref_commande=?");
//		q.setParameter(0, 2);
//		List<Object[]> produits = q.list();
//		double total=0;
//		for (Object[] o : produits) 
//		{	
//			String code = o[0].toString();
//			double prix = (Double) o[1];
//			int quantite = (Integer) o[2];
//			double line = prix*quantite;
//			total+= line;
//			System.out.println("code: "+code+", Prix: "+prix+", quantite: "+quantite+", Line: "+line);
//		}
//		System.out.println("Total: "+total);
		
		
//		Commande c2 = session.load(Commande.class, 2);
//		List<Cmd_Art> liste = c2.getCmd_art();
//		
//		double total=0;
//		System.out.println("\n\n--- Les details de la commande ---");
//		for (Cmd_Art c : liste) 
//		{	
//			int code = c.getCmd_Art_PK().getProduit().getCode();
//			double prix = c.getCmd_Art_PK().getProduit().getPrix();
//			int quantite = c.getQuantite();
//			double line = prix*quantite;
//			total+= line;
//			System.out.println("code: "+code+", Prix: "+prix+", quantite: "+quantite+", Line: "+line);
//		}
//		System.out.println("\nTotal: "+total);
		
		System.out.println("\n\nDONE!");
		session.getTransaction().commit();
		session.close();
	}

}
