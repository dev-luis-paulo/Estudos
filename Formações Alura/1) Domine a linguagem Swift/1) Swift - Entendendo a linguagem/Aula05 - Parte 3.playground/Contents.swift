//Desafio1 - Calculo de media

func calcularMedia(_ notas: [Double]) -> Double {
    
    let totalElementos = notas.count
    var somaValoresArray: Double = 0.0
    var media: Double
    
    for nota in notas {
        somaValoresArray += nota
    }
    
    media = somaValoresArray / Double(totalElementos)
    
    return media
}

var notas: [Double] = [8, 8, 10, 9]
var mediaFinal: Double = 0
mediaFinal = calcularMedia(notas)

print(mediaFinal)

//Desafio2 - dicionario com estados

var estados = [
    "SP": "São Paulo",
    "RJ": "Rio de Janeiro",
    "MG": "Minas Gerais",
    "CE": "Ceará"
]

func nomesEstados(_ estados: [String: String]){
    
    for nomeDoEstado in estados.values {
        if nomeDoEstado.count > 8{
            print("O Estado \(nomeDoEstado) possui mais que 8 caracteres.")
        }
    }
}

nomesEstados(estados)
