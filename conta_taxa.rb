
class ContaComTaxa < ContaBancaria
  def transferir (outra_conta, valor)
    if saldo >= valor
      super(outra_conta, valor)
      taxa_de_saque = 2
      debitar(taxa_de_saque)
    else
      raise "nao consegui transferir. saldo insuficiente"
    end
    
    

  end
end