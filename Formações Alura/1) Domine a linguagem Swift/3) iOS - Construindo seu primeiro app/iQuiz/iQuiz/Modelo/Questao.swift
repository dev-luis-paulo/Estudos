//
//  Questao.swift
//  iQuiz
//
//  Created by Luís Paulo Da Costa Cavalcante on 22/09/23.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Qual o patrono de Luna Lovegood?", respostas: ["Lebre", "Gato", "Rato"], respostaCorreta: 0),
    Questao(titulo: "Qual a finalidade do feitiço Incendio?", respostas: ["Usado para criar fogo instantaneamente", "Usado para acender fogo diminuindo o tempo de demora", "Usado para apagar fogo instantaneamente"], respostaCorreta: 0),
]
