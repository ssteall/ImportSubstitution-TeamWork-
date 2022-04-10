//
//  DescriptionImportProductViewController.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Максим Гурков on 10.04.2022.
//

import UIKit

class DescriptionImportProductViewController: UIViewController {
    
    @IBOutlet weak var descriptionProductLabel: UILabel!
    @IBOutlet weak var priceProductLabel: UILabel!
    @IBOutlet weak var rateProductLabel: UILabel!
    
    var descriptionImportProduct: ImportProduct!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = descriptionImportProduct.name
        descriptionProductLabel.text = descriptionImportProduct.description
        

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
