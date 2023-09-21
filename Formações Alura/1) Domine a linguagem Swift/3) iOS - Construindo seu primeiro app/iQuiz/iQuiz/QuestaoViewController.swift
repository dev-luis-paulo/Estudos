//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Luís Paulo Da Costa Cavalcante on 21/09/23.
//

import UIKit

class QuestaoViewController: UIViewController {

    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    @IBOutlet var botoesResposta: [UIButton]!
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let corDeFundo = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        //self.view.backgroundColor = corDeFundo
        
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
