package tn.enig.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Produit {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String description;
	private String dateAjout;
	private int quantite ;
	private float prixAchat;
	private float prixVente;
	@OneToOne
	@JoinColumn(name = "magasin", referencedColumnName = "id")
	private Magasin magasin;
	
	public Produit() {
		// TODO Auto-generated constructor stub
	}


	public Produit(Integer id, String description, String dateAjout, int quantite, float prixAchat, float prixVente) {
		super();
		this.id = id;
		this.description = description;
		this.dateAjout = dateAjout;
		this.quantite = quantite;
		this.prixAchat = prixAchat;
		this.prixVente = prixVente;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getDateAjout() {
		return dateAjout;
	}


	public void setDateAjout(String dateAjout) {
		this.dateAjout = dateAjout;
	}


	public int getQuantite() {
		return quantite;
	}


	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}


	public float getPrixAchat() {
		return prixAchat;
	}


	public void setPrixAchat(float prixAchat) {
		this.prixAchat = prixAchat;
	}


	public float getPrixVente() {
		return prixVente;
	}


	public void setPrixVente(float prixVente) {
		this.prixVente = prixVente;
	}


	public Magasin getMagasin() {
		return magasin;
	}


	public void setMagasin(Magasin magasin) {
		this.magasin = magasin;
	}

	@Override
	public String toString() {
		return "Produit{" +
				"id=" + id +
				", description='" + description + '\'' +
				", dateAjout='" + dateAjout + '\'' +
				", quantite=" + quantite +
				", prixAchat=" + prixAchat +
				", prixVente=" + prixVente +
				", magasin=" + magasin +
				'}';
	}
}
