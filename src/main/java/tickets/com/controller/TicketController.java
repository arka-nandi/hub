package tickets.com.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tickets.com.model.Ticket;
import tickets.com.repository.TicketsRepository;

@Controller
public class TicketController {
	
	
	@Autowired
	TicketsRepository ticketRepo;

	@RequestMapping(value = "/admin/tickets", method = RequestMethod.GET)
	public String listTickets(ModelMap map) {
		
		List<Ticket> tickets = ticketRepo.findAll().stream().filter(t-> t.getStatus().equalsIgnoreCase("created")).collect(Collectors.toList());
		map.addAttribute("tickets",tickets);
		return "/tickets_new.jsp";

	}
	@RequestMapping(value = "/admin/tickets/update-ticket", method = RequestMethod.GET)
	public String updateStatusForm(@RequestParam Integer ticketId, ModelMap map)
	{
		System.out.println("Ticket Id :"+ticketId);
		
		Ticket ticket = ticketRepo.findById(ticketId).get();
		map.addAttribute("ticket", ticket);
		return "/update-ticket.jsp";
	}
	
	
	@RequestMapping(value = "/admin/tickets/update-ticket", method = RequestMethod.POST)
	public String updateStatus(@RequestParam Integer ticketId, 
			Ticket ticket,
			ModelMap map)
	{
		
		ticket.setStatus("Resolved");
		ticketRepo.save(ticket);
		return "redirect:/admin/tickets";
	}


}
