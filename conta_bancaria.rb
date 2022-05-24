class ContaBancaria
  def initialize (proprietario, valor_inicial)
    @proprietario = proprietario
    @valor = valor_inicial
  end

  def transferir (outra_conta, valor)
    if saldo >= valor
      debitar(valor)
      outra_conta.depositar(valor)
    else
      raise "nao consegui transferir. saldo insuficiente"
    end
  end

  def saldo
    @valor
  end

  protected 
  def debitar(valor_debitar)
    @valor -= valor_debitar
  end

  def depositar (valor_depositar)
    @valor += valor_depositar
  end
end