package MVC.Modele;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="tab_Article")
public class Article
{	
	@Id @Column(name="code_art") @GeneratedValue(strategy=GenerationType.AUTO)
	private int code;
	@Column(name="designation_art")
	private String designation;
	@Column(name="prix_art")
	private double prix;
	@Column(name="quantite_art")
	private int quantite;
	
	@OneToMany(mappedBy="cmd_Art_PK.article")
	private List<Cmd_Art> cmd_art = new ArrayList<Cmd_Art>();
	
	
	public Article(){}
	public Article(String designation, double prix, int quantite) 
	{
		this.designation = designation;
		this.prix = prix;
		this.quantite = quantite;
	}

	public int getCode() { return code; }
	public void setCode(int code) { this.code = code; }
	public String getDesignation() { return designation; }
	public void setDesignation(String designation) { this.designation = designation; }
	public double getPrix() { return prix; }
	public void setPrix(double prix) { this.prix = prix; }
	public int getQuantite() { return quantite; }
	public void setQuantite(int quantite) { this.quantite = quantite; }
	public List<Cmd_Art> getCmd_art() {  return cmd_art; }
	public void setCmd_art(List<Cmd_Art> cmd_art) { this.cmd_art = cmd_art; }
	
	@Override
	public String toString() {
		return "Article [code=" + code + ", designation=" + designation
				+ ", prix=" + prix + ", quantite=" + quantite + "]";
	}

}
