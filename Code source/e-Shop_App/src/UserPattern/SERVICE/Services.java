package UserPattern.SERVICE;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javafx.util.Pair;
import MVC.Modele.*;

public interface Services 
{	
	/* Client */
	public boolean enregistrerClient(Client client);
	public Client authClient(Client client);
	/* Article */
	public List<Article> getArticles();
	public Article getArticle(int code);
	/* Commande */
	public int getNumberCmdByYear(String date);
	public boolean passerCommande(Client client, ArrayList<Pair> articles);
	public List<Commande> getCommandes(Client client);
	public Commande getCommande(String codeCmd);
}
