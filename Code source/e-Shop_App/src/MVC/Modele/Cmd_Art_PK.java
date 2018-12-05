package MVC.Modele;

import java.io.Serializable;

import javax.persistence.*;

@Embeddable
public class Cmd_Art_PK implements Serializable 
{	
	private static final long serialVersionUID = 2852490785227366884L;
	
	@ManyToOne @JoinColumn(name="code_cmd")
	private Commande commande;
	@ManyToOne @JoinColumn(name="code_art")
	private Article article;
	
	
	public Cmd_Art_PK() {}
	
	public Cmd_Art_PK(Commande commande, Article article) {
		super();
		this.commande = commande;
		this.article = article;
	}
	
	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	@Override
	public String toString() {
		return "Cmd_Art_PK [commande=" + commande.getCode() + ", article=" + article.getCode() + "]";
	}
	
	
	
	
} 