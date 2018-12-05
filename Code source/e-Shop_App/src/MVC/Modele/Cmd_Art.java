package MVC.Modele;

import javax.persistence.*;

@Entity
public class Cmd_Art 
{	
	@Id
	private Cmd_Art_PK cmd_Art_PK;
	@Column(name="quantite")
	private int quantite;
	
	public Cmd_Art(){}
	public Cmd_Art(Commande c, Article a, int quantite) 
	{	
		this.cmd_Art_PK = new Cmd_Art_PK(c, a);
		this.quantite = quantite;
	}

	public Cmd_Art_PK getCmd_Art_PK() {
		return cmd_Art_PK;
	}

	public void setCmd_Art_PK(Cmd_Art_PK cmd_Art_PK) {
		this.cmd_Art_PK = cmd_Art_PK;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	@Override
	public String toString() {
		return "Cmd_Art [cmd_Art_PK=" + cmd_Art_PK + ", quantite=" + quantite + "]";
	}
		
	
	
	
} 