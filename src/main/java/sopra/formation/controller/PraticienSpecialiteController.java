package sopra.formation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sopra.formation.model.PraticienSpecialite;

import sopra.formation.repository.custom.IPraticienSpecialiteRepository;


@Controller
public class PraticienSpecialiteController {

	@Autowired
	private IPraticienSpecialiteRepository praticienSpecialiteRepo;

	
	@GetMapping("/praticienSpecialite")// ETAPE 1

	public String list(Model model)  {
		// ETAPE 2
		List<PraticienSpecialite> praticienSpecialites = this.praticienSpecialiteRepo.findAll();

		// ETAPE 3
		model.addAttribute("mesPraticienSpecialites", praticienSpecialites);
		
		// ETAPE 4
		return "praticienSpecialite/list";
	}
	@GetMapping("/praticienSpecialite/add")
	public String add()  {
		// ETAPE 2 et 3 inutile
		// ETAPE 4
		return "praticienSpecialite/form";
	}
	@GetMapping("/praticienSpecialite/edit")
	public String edit(@RequestParam Long id, Model model) {
	
		
		// ETAPE 2
		PraticienSpecialite praticienSpecialite = praticienSpecialiteRepo.findById(id).get();
		
		// ETAPE 3
		model.addAttribute("pratSpe", praticienSpecialite);
		
		// ETAPE 4
		return "praticienSpecialite/form";
	}
	@PostMapping("/praticienSpecialite/save")
	public String save(@RequestParam(required = false) Long id, @RequestParam(required = false, defaultValue="0") int version)  {
	
		PraticienSpecialite praticienSpecialite = new PraticienSpecialite(id);
		praticienSpecialite.setVersion(version);
		
		praticienSpecialiteRepo.save(praticienSpecialite);
		
		return "redirect:/praticienSpecialite";
	}
	@GetMapping("/praticienSpecialite/delete")
	public String delete(@RequestParam Long id)  {
		
		praticienSpecialiteRepo.deleteById(id);
		
		return "redirect:/praticienSpecialite";
	}
	@GetMapping("/praticienSpecialite/cancel")
	public String cancel()  {
		return "forward:/praticienSpecialite";
	}
}


