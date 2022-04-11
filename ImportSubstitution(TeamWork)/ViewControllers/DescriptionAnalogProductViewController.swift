//
//  DescriptionAnalogProductViewController.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Максим Гурков on 11.04.2022.
//

import UIKit

class DescriptionAnalogProductViewController: UIViewController {
    
    @IBOutlet weak var descriptionAnalogLabel: UILabel!
    @IBOutlet weak var priceAnalogLabel: UILabel!
    @IBOutlet weak var rateAnalogLabel: UILabel!
    
    @IBOutlet weak var productImage: UIImageView!
    
    
    var descriptionProduct: RussianProduct!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        productImage.image = UIImage(named: descriptionProduct.name)
        productImage.layer.cornerRadius = productImage.frame.height / 2
        
        title = descriptionProduct.name
        descriptionAnalogLabel.text = descriptionProduct.description
        priceAnalogLabel.text = "\(descriptionProduct.price)"
        rateAnalogLabel.text = "\(descriptionProduct.rate)"
        
    }
    

    @IBAction func favoritesButton(_ sender: Any) {
        descriptionProduct.chosen.toggle()
    }
    
}
