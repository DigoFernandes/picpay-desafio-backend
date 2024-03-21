package br.com.digofernandes.picpaydesafiobackend.transaction;

import org.springframework.data.repository.ListCrudRepository;

public interface TransactionRepository extends ListCrudRepository<Transaction, Long>{
    
}
