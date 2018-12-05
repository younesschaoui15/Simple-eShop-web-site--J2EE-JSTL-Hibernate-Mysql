package MVC.Modele;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

import UserPattern.SERVICE.IMPL.ServicesImpl;

@Entity
@Table(name="tab_Commande")
public class Commande 
{	
	@Id @Column(name="code_cmd")
	private String code;
	@Column(name="date_cmd")
	private LocalDate date;	
	@Column(name="montant_cmd")
	private double montant;	
	
	@ManyToOne @JoinColumn(name="code_client")
	private Client client;
	@OneToMany(mappedBy="cmd_Art_PK.commande")
	private List<Cmd_Art> cmd_art = new ArrayList<Cmd_Art>();
	
	
	public Commande() {	}
	public Commande(LocalDate date) 
	{
		this.date = date;
		this.setCode(String.valueOf(date));
		this.montant = -1;
	}
	
	public String getCode() {
		return code;
	}
	public String generateCode(String date) 
	{	
		String year = date.substring(2,4);//date:2018 -> year=18
		String fullYear = date.substring(0,4);//date:2018 -> fullYear=2018
		String no = String.valueOf(new ServicesImpl().getNumberCmdByYear(fullYear)+1);
		return no+"/"+year;
	}
	public void setCode(String code) 
	{
		this.code = generateCode(code);
	}	
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	public double getMontant() {
		return montant;
	}
	public void setMontant(double montant) {
		this.montant = montant;
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	public List<Cmd_Art> getCmd_art() {
		return cmd_art;
	}
	public void setCmd_art(List<Cmd_Art> cmd_art) {
		this.cmd_art = cmd_art;
	}
	
	
	@Override
	public String toString() {
		return "Commande [code=" + code + ", date=" + date + ", montant="
				+ montant + ", client=" + client.getCode() + "]";
	}
	
	
	
	
}
