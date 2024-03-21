package br.com.digofernandes.picpaydesafiobackend.transaction;

import org.springframework.stereotype.Service;

import br.com.digofernandes.picpaydesafiobackend.wallet.WalletRepository;

@Service
public class TransactionService {
    private final TransactionRepository transactionRepository;
    private final WalletRepository walletRepository;


    public TransactionService(TransactionRepository transactionRepository, WalletRepository walletRepository) {
        this.transactionRepository = transactionRepository;
        this.walletRepository = walletRepository;
    }
    public Transaction create(Transaction transaction) {
        //1-validar
        
        //2 - criar a transação
        var newTransaction = transactionRepository.save(transaction);
        //3 - debitar da carteira

        var wallet = walletRepository.findById(transaction.payer().get());
        // 4 - chamar serviços externos

        return newTransaction;
    }
}
