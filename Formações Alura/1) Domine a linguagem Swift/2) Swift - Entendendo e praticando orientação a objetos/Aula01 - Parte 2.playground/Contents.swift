//Aula 1 - parte 2 structs e classes

class ContaCorrente {
    var saldo: Double
    var nome: String
    
    //class nao precisa de mutating para alterar
    func sacar(_ valor: Double){
        saldo -= valor
    }
    
    func depositar(_ valor: Double){
        saldo += valor
        print("Foi realizado um deposito de \(valor)")
    }
    
    //construtor - para inicializar as var numa class
    init(nome: String) { //nome é passado como parametro
        saldo = 0.0
        self.nome = nome
    }
}

//instanciando um objeto para acessar os dados da struct
var contaCorrenteLuis = ContaCorrente(nome: "Luis")
print(contaCorrenteLuis.saldo)
contaCorrenteLuis.depositar(8000)
print(contaCorrenteLuis.saldo)

var contaCorrentePaulo = ContaCorrente(nome: "Paulo")
contaCorrentePaulo.depositar(10000)
contaCorrentePaulo.sacar(5000)
print(contaCorrentePaulo.saldo)
