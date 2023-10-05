//
//  DetalheViewController.swift
//  AluraViagens
//
//  Created by Luís Paulo Da Costa Cavalcante on 04/10/23.
//

import UIKit

class DetalheViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction func botaoVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
