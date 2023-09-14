var notas: [Double] = [8.5, 9.0, 6.8, 7.8]

var arrayVazio: [Int] = []
var outroArrayVazio = Array<String>()

notas.isEmpty
arrayVazio.isEmpty

notas.count
notas.min()
notas.max()
notas.contains(6.8)
notas.firstIndex(of: 6.8) //posicao do elemento

notas[1]

notas.append(10) //adiciona elemento
notas.insert(5, at: 2) //insere elemento, neste caso o elemento 5 na posicao 2
notas += [7.7] //insere no final do array

notas.removeLast() //remove o ultimo elemento
notas.removeFirst() //remove o primeiro elemento
notas.remove(at: 1) //remove na posicao 1

for nota in notas {
    print(nota)
}

for (index, elemento) in notas.enumerated(){
    print(index, elemento)
}
