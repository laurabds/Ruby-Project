
require "./conta_bancaria.rb"
require "./conta_taxa.rb"

conta_laura = ContaComTaxa.new("laura", 100)
conta_felipe = ContaBancaria.new("felipe", 200)

conta_laura.transferir(conta_felipe,50)

p "conta laura"
p conta_laura.saldo

p "conta felipe"
p conta_felipe.saldo

#teste conta sem saldo
conta_laura.transferir(conta_felipe, 30)

p conta_laura.saldo