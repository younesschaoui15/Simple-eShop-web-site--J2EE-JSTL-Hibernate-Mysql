package UserPattern.DAO;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javafx.util.Pair;
import MVC.Modele.*;

public interface DAO 
{	
	/* Client */
	public boolean createClient(Client c);
	public boolean isExist(Client c);
	/* Article */
	public ArrayList<Article> getArticles();
	public Article getArticleByCode(int code);
	/* Commande */
	public List<Commande> getCommandesByClient(Client client);
	public int getNbCmdByYear(String year);
	public boolean validateCommande(Client client, ArrayList<Pair> articles);
	public Commande getCommandeByCode(String codeCmd);
	
}
