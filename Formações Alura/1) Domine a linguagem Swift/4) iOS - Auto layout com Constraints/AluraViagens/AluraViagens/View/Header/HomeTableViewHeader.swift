//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by Luís Paulo Da Costa Cavalcante on 25/09/23.
//

import UIKit

class HomeTableViewHeader: UIView {

    @IBOutlet weak var tituloLabel: UILabel!
    
    
    @IBOutlet weak var MainHeaderView: HomeTableViewHeader!
    
    @IBOutlet weak var BannerImageView: UIImageView!
    
    @IBOutlet weak var bannerView: UIView!
    
    func configuraView() {
        bannerView.layer.cornerRadius = 10
        bannerView.layer.masksToBounds = true
        
        MainHeaderView.layer.cornerRadius = 500
        MainHeaderView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
}
