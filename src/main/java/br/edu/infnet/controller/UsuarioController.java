package br.edu.infnet.controller;

import java.util.logging.Level;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import br.edu.infnet.model.negocio.Usuario;
import br.edu.infnet.model.service.UsuarioService;

@Controller
@SessionAttributes("user")
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	private Logger logger = Logger.getLogger(UsuarioController.class.getName()); 
	
	@PostMapping(value = "/usuario/login")
	public String login(Model model, @RequestParam String email, @RequestParam String senha, @RequestParam String tipo) {
		

		Usuario usuario = usuarioService.autenticacao(email, senha, tipo);
		
		if(usuario != null) {
			model.addAttribute("user", usuario);
			logger.info(tipo);
			
			if(tipo.equals("A")) {
				logger.log(Level.INFO, "pagina de admin");
				return "redirect:/admin";   //página que admin enxerga
			} else if(tipo.equals("C")) {
				logger.log(Level.INFO, "pagina de candidato");
				return "redirect:/candidato";  //página que candidato enxerga
			} else {
				logger.log(Level.INFO, "pagina de empresa");
				return "redirect:/empresa"; //página que a empresa enxerga
			}
		}
		
		model.addAttribute("mensagem", "Dados incorretos.");
		return "login" ;
	}
	
	@GetMapping(value ="/usuario")
	public String novoUsuario() {
		return "usuario/novo";
	}
	
	@PostMapping(value= "/usuario/incluir")
	public String incluir(Usuario usuario) {
		
		usuarioService.incluir(usuario);
		
		return "redirect:/usuario";
	}
	
	
	
}
