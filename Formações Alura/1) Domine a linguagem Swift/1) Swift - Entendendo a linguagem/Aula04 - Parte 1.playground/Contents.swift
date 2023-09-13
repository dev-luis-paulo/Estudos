//funcoes e opcionais

func soma(_ num1: Int, mais num2: Int) -> Int {
    var resultado = num1 + num2
    return resultado
}

func verificaAdulto(_ idade: Int) -> Bool {
    return idade >= 18
}

func somaMaisUm(_ numero: inout Int){
    numero += 1
    print(numero)
}

var resultado = soma(5, mais: 5)
print("O resultado da soma é \(resultado)")

verificaAdulto(20)

var valor = 10
//Passagem de parametro por referencia, assim a var pode ser alterada
somaMaisUm(&valor)

//opcional
var telefone: String?
telefone = "99999999"

//forçar o desembrulho - nao recomendado - pode causar crash no app
//print(telefone!)

if telefone != nil{
    print(telefone!)
}

//telefoneDesembrulhado só existe dentro desse escopo - optional binding
if let telefoneDesembrulhado = telefone {
    print(telefoneDesembrulhado)
}

//guard let pode ser usado em outras partes do codigo
func aunteticar(usuario: String?, senha: String?) {
    guard let usuario, let senha = senha
    else { return } //esse else return sai da funcao caso usuario ou senha seja nil
    print(usuario)
    print(senha)
}
aunteticar(usuario: "Luis", senha: "1234")

//optional chaining
if let primeiroChar = telefone?.first {
    print(primeiroChar)
}

//nil coalescing operator
print(telefone ?? "Não há valor p/ telefone")
