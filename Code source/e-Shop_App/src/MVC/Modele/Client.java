package MVC.Modele;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

import org.hibernate.annotations.NaturalId;

@Entity
@Table(name="tab_Client")
public class Client 
{ 	
	@Id @Column(name="code_clt")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int code;
	@NaturalId @Column(name="nomutilisateur_clt")
	private String nomutilisateur;
	@Column(name="motdepasse_clt")
	private String motdepasse;
	@Column(name="nom_clt")
	private String nom;
	@Column(name="prenom_clt")
	private String prenom;
	@Column(name="adresse_clt")
	private String adresse;
	@Column(name="ville_clt")
	private String ville;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy="client")
	private List<Commande> commandes = new ArrayList<Commande>(); 
	
	
	public Client() {}
	public Client(String nomutilisateur, String motdepasse, String nom, String prenom, String adresse,String ville) 
	{
		this.nomutilisateur = nomutilisateur;
		this.motdepasse = motdepasse;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.ville = ville;
	}
	
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getNomutilisateur() {
		return nomutilisateur;
	}
	public void setNomutilisateur(String nomutilisateur) {
		this.nomutilisateur = nomutilisateur;
	}
	
	public String getMotdepasse() {
		return motdepasse;
	}
	public void setMotdepasse(String motdepasse) {
		this.motdepasse = motdepasse;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	
	public List<Commande> getCommandes() {
		return this.commandes;
	}
	public void setCommandes(List<Commande> commandes) {
		this.commandes = commandes;
	}
	
	
	@Override
	public String toString() {
		return "Client [code=" + code + ", nomutilisateur=" + nomutilisateur
				+ ", motdepasse=" + motdepasse + ", nom=" + nom + ", prenom="
				+ prenom + ", adresse=" + adresse + ", ville=" + ville + "]";
	}

	} 