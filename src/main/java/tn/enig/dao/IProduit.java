package tn.enig.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import tn.enig.model.Magasin;
import tn.enig.model.Produit;

public interface IProduit extends JpaRepository<Produit, Integer> {

	@Query("from Produit p where p.magasin.id = :wassim ")

	public List<Produit> findByIdMagasin(@Param("wassim") int id);

	@Query("select p from Produit p where p.quantite=?1")
	public List<Produit>findq(int qte);

	public List<Produit> findByDescriptionContaining(String n);

	public List<Produit> findByQuantiteIs(int qte);

	public List<Produit> findByQuantite(int qte);


	@Transactional
	public void deleteByQuantite(int qte);

}
