package sopra.formation.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sopra.formation.model.Creneaux;
import sopra.formation.model.Praticien;
import sopra.formation.model.Rdv;

import sopra.formation.repository.custom.ICreneauxRepository;

@Controller
public class CreneauxController {

	@Autowired
	private ICreneauxRepository creneauxRepo;

	
	@GetMapping("/creneaux")// ETAPE 1

	public String list(Model model)  {
		// ETAPE 2
		List<Creneaux> creneaux = this.creneauxRepo.findAll();

		// ETAPE 3
		model.addAttribute("mesCreneaux", creneaux);
		
		// ETAPE 4
		return "creneaux/list";
	}
	@GetMapping("/creneaux/add")
	public String add()  {
		// ETAPE 2 et 3 inutile
		// ETAPE 4
		return "creneaux/form";
	}
	@GetMapping("/creneaux/edit")
	public String edit(@RequestParam Long id, Model model) {
	
		
		// ETAPE 2
		Creneaux creneaux = creneauxRepo.findById(id).get();
		
		// ETAPE 3
		model.addAttribute("spe", creneaux);
		
		// ETAPE 4
		return "creneaux/form";
	}
	@PostMapping("/creneaux/save")
	public String save(@RequestParam(required = false) Long id, @RequestParam(required = false, defaultValue="0") int version, @RequestParam @DateTimeFormat(pattern="yyyy-mm-dd") Date creneauxDispo, @RequestParam List<Rdv> rdv, @RequestParam Praticien praticien )  {
	
		Creneaux creneaux = new Creneaux(id, version, creneauxDispo, rdv, praticien);
		creneaux.setVersion(version);
		
		creneauxRepo.save(creneaux);
		
		return "redirect:/creneaux";
	}
	@GetMapping("/creneaux/delete")
	public String delete(@RequestParam Long id)  {
		
		creneauxRepo.deleteById(id);
		
		return "redirect:/creneaux";
	}
	@GetMapping("/creneaux/cancel")
	public String cancel()  {
		return "forward:/creneaux";
	}
}




