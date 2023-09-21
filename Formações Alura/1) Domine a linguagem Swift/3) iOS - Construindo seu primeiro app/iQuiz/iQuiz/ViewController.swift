//
//  ViewController.swift
//  iQuiz
//
//  Created by Luís Paulo Da Costa Cavalcante on 20/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }

    func configuraLayout(){
        botaoIniciarQuiz.layer.cornerRadius = 12.0
    }
    
    @IBAction func botaoPressionado(_ sender: Any) {
        print("O botão foi pressionado")
    }
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
}

