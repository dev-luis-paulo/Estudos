//Aula 02 - parte 1 heranca

// adicionar final no inicio da class, faz com que seja impedido de herdar essa class
class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double){
        saldo -= valor
    }
    
    func depositar(_ valor: Double){
        saldo += valor
    }
    
    init(nome: String){
        self.nome = nome
    }
}

class ContaPoupanca: Conta {
    var possuiCartaoDebito: Bool
    
    func solicitarDebito(){
        possuiCartaoDebito = true
        print("O cliente solicita um cartao de debito")
    }
    
    //override sobreescreve, nesse caso sacar, adicionando uma taxa de 10
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
    
    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome) //p pegar da classe pai
    }
}

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double){
        print("O cliente esta solicitando um emprestimo no valor de \(valor)")
        super.depositar(valor) //super chama um método da classe pai
    }
    
    //sobreescreve funcao sacar, adicionado uma taxa de 5
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}

var contaPoupanca = ContaPoupanca(nome: "Luis", possuiCartaoDebito: false)
contaPoupanca.depositar(100)
contaPoupanca.sacar(20)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()

var contaCorrente = ContaCorrente(nome: "Luis")
contaCorrente.depositar(1000)
contaCorrente.sacar(100)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(10000)

func exibeSaldoDaConta(_ conta: Conta){
    print(conta.saldo)
    
    if conta is ContaCorrente {
        print("Conta do tipo conta corrente")
    }
    
    //as retorna um opt
    if let contaCorrente = conta as? ContaCorrente {
        contaCorrente.solicitarEmprestimo(200) //dessa forma consegue acessar
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else { return }
    print(contaPoupanca.possuiCartaoDebito)
    
    //Cuidado com isso, causa crash pq desembrulhou contaPoupanca tbm
    //var contaCorrente2 = conta as! ContaCorrente
    //contaCorrente2.solicitarEmprestimo(200)
}

exibeSaldoDaConta(contaCorrente)
exibeSaldoDaConta(contaPoupanca)



