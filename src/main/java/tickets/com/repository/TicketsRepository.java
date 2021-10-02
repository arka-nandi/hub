package tickets.com.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tickets.com.model.Ticket;
@Repository
public interface TicketsRepository extends JpaRepository<Ticket, Integer>{
  
}
