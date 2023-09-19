//Aula04 - extension

class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double){
        saldo -= valor
    }
    
    func depositar(_ valor: Double){
        saldo += valor
    }

    init(nome: String) {
        self.nome = nome
    }
}

//Extende um tipo de dado ja existente, class, struc. Pode ser utilizado para organizar, implementar novos métodos
extension Conta {
    func transferir(_ contaDestino: Conta, _ valor: Double){
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaLuis = Conta(nome: "Luis")
contaLuis.depositar(1000)

var contaAna = Conta(nome: "Ana")
contaLuis.transferir(contaAna, 100)

print(contaLuis.saldo)
print(contaAna.saldo)

func contaCaracteres(_ texto: String) -> Int {
    return texto.count
}

let texto = "Luis Paulo"
contaCaracteres(texto)

extension String {
    func contaCaracteres() -> Int {
        return self.count
    }
}

