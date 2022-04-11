//
//  DescriptionImportProductViewController.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Максим Гурков on 10.04.2022.
//

import UIKit

class DescriptionImportProductViewController: UIViewController {
    
    @IBOutlet weak var descriptionProductLabel: UILabel!
    
    @IBOutlet weak var productImage: UIImageView!
    
    
    var descriptionImportProduct: ImportProduct!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = descriptionImportProduct.name
        descriptionProductLabel.text = descriptionImportProduct.description
        
        productImage.image = UIImage(named: descriptionImportProduct.name)
        
        productImage.layer.cornerRadius = productImage.frame.height / 2
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let analogVC = segue.destination as? RussProductTableViewController else { return }
        analogVC.analogProduct = descriptionImportProduct.analogues

    }
    @IBAction func analogProductButton(_ sender: Any) {
        
    }
    

}
