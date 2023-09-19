
// protocolos sao um conjunto de regras definidas que devem ser seguidas
//protocol Conta {
//    var saldo: Double { get set } //get set (pode ser lida) (pode ser alterada)
//
//    func sacar(_ valor: Double)
//
//    func depositar(_ valor: Double)
//}

enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

enum ResultadoSaque {
    case sucesso(novoValor: Double)
    case falha(erro: String)
}

//raw value é um valor customizavel, pode ser tbm outros tipos de dado como String
enum Mes: Int {
    case janeiro = 1,
         fevereiro,
         marco,
         abril,
         maio,
         junho,
         julho,
         agosto,
         setembro,
         outubro,
         novembro,
         dezembro
}

class ContaCorrente {
    var nome: String
    var saldo: Double
    
    func sacar(_ valor: Double) -> ResultadoSaque {
        if valor > saldo {
            return .falha(erro: "O valor é maior que seu saldo")
        } else {
            saldo -= valor
            return .sucesso(novoValor: saldo)
        }
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    //Deixar tipoPagamento como string é vago para isso é melhor usar enum
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
        switch tipoPagamento {
        case .pix: print("O pagamento será por pix")
        case .boleto: print("O pagamento será por boleto")
        case .saldoEmConta: print("O pagamento será por saldo em conta")
        }
    }
    
    init(nome: String) {
        saldo = 0.0
        self.nome = nome
    }
}

var contaLuis = ContaCorrente(nome: "Luis")
//outra forma
// var contaLuis: Conta = .init(nome: "Luis")
contaLuis.pagamentoCartao(.pix)
contaLuis.depositar(1000)
let resultado = contaLuis.sacar(50)

switch resultado {
    case .sucesso(let novoValor):
        print("O saque foi um sucesso, e o saldo é \(novoValor)")
    case .falha(let erro):
        print(erro)
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro

