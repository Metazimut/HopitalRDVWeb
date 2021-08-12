package sopra.formation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import sopra.formation.model.Specialite;
import sopra.formation.repository.custom.ISpecialiteRepository;

@Controller
public class SpecialiteController {

	@Autowired
	private ISpecialiteRepository specialiteRepo;

	
	@GetMapping("/specialite")// ETAPE 1

	public String list(Model model)  {
		// ETAPE 2
		List<Specialite> specialites = this.specialiteRepo.findAll();

		// ETAPE 3
		model.addAttribute("mesSpecialites", specialites);
		
		// ETAPE 4
		return "specialite/list";
	}
	@GetMapping("/specialite/add")
	public String add()  {
		// ETAPE 2 et 3 inutile
		// ETAPE 4
		return "specialite/form";
	}
	@GetMapping("/specialite/edit")
	public String edit(@RequestParam Long id, Model model) {
	
		
		// ETAPE 2
		Specialite specialite = specialiteRepo.findById(id).get();
		
		// ETAPE 3
		model.addAttribute("spe", specialite);
		
		// ETAPE 4
		return "specialite/form";
	}
	@PostMapping("/specialite/save")
	public String save(@RequestParam(required = false) Long id, @RequestParam(required = false, defaultValue="0") int version, @RequestParam String libelle)  {
	
		Specialite specialite = new Specialite(id, libelle);
		specialite.setVersion(version);
		
		specialiteRepo.save(specialite);
		
		return "redirect:/specialite";
	}
	@GetMapping("/specialite/delete")
	public String delete(@RequestParam Long id)  {
		
		specialiteRepo.deleteById(id);
		
		return "redirect:/specialite";
	}
	@GetMapping("/specialite/cancel")
	public String cancel()  {
		return "forward:/specialite";
	}
}


