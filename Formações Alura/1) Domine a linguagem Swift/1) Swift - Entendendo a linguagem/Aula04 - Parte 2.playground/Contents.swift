//Desafio saber se um numero é primo - Retornar true ou false

func ehPrimo (_ numero: Int) -> Bool{
    let d = 2
    
    for i in d..<numero{
        if numero % i == 0 {
            return false
        }
    }
    return true
}

ehPrimo(3)
ehPrimo(4)

//Desafio 2 - funcao com opt
func desafio(nome: String?){
    guard let nome = nome
    else {return print("Nome não especificado")}
    print(nome)
}

desafio(nome: nil)

//Desafio 3 - Indo ao restaurante

func dividirIgualmente(_ numeroPessoas: Int, _ totalGasto: Double) -> Double {
    let comissaoGarcom = totalGasto*0.1
    
    return (totalGasto+comissaoGarcom) / Double(numeroPessoas)
}

let totalPessoa = dividirIgualmente(4, 120)
print(totalPessoa)
