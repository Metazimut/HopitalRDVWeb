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

import sopra.formation.model.Evaluation;
import sopra.formation.repository.IEvaluationRepository;

@Controller
public class EvaluationController {

	@Autowired
	private IEvaluationRepository evaluationRepo;

	@GetMapping("/evaluation") // ETAPE 1
	public String list(Model model) {
		// ETAPE 2
		List<Evaluation> evaluations = this.evaluationRepo.findAll();

		// ETAPE 3
		model.addAttribute("mesEvaluations", evaluations);

		// ETAPE 4
		return "evaluation/list";
	}

	@GetMapping("/evaluation/add")
	public String add() {
		// ETAPE 2 et 3 inutile
		// ETAPE 4
		return "evaluation/form";
	}

	@GetMapping("/evaluation/edit")
	public String edit(@RequestParam("id") Long idEvaluation, Model model) {
		// ETAPE 2
		Evaluation evaluation = evaluationRepo.findById(idEvaluation).get();

		// ETAPE 3
		model.addAttribute("eval", evaluation);

		// ETAPE 4
		return "evaluation/form";
	}
	
	@PostMapping("/evaluation/save")
	public String save(@RequestParam(required = false) Long id, @RequestParam(required = false, defaultValue = "0") int version, @RequestParam Integer comportemental, @RequestParam Integer technique, @RequestParam String commentaires) {
		Evaluation evaluation = new Evaluation(id, comportemental, technique, commentaires);
		evaluation.setVersion(version);
		
		evaluationRepo.save(evaluation);
		
		return "redirect:/evaluation";
	}

	@GetMapping("/evaluation/delete")
	public String delete(@RequestParam Long id) {
		evaluationRepo.deleteById(id);
		
		return "redirect:/evaluation";
	}
	
	@GetMapping("/evaluation/cancel")
	public String cancel() {
		return "forward:/evaluation";
	}
}
