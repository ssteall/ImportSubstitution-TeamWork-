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
    @IBOutlet var favoriteButton: UIButton!
    
    var descriptionProduct: RussianProduct!

    override func viewDidLoad() {
        super.viewDidLoad()
        productImage.image = UIImage(named: descriptionProduct.name)
        title = descriptionProduct.name
        descriptionAnalogLabel.text = descriptionProduct.description
        priceAnalogLabel.text = "\(descriptionProduct.price) руб."
        rateAnalogLabel.text = "\(descriptionProduct.rate) из 10"
        setFavoriteButton()
    }
    
    @IBAction func favoritesButton(_ sender: Any) {
        if descriptionProduct.chosen {
            descriptionProduct.chosen.toggle()
            showAlert(title: "Избранное", massage: "Товар удален из избранного")
            setFavoriteButton()
        } else {
            descriptionProduct.chosen.toggle()
            showAlert(title: "Избранное", massage: "Товар добавлен в избранное")
            setFavoriteButton()
        }
        
    }
    @IBAction func homeButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    private func showAlert(title: String, massage: String){
        let alert = UIAlertController(title: title,
                                      message: massage,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ок",
                                      style: .default))
        self.present(alert, animated: true)
    }
    
    private func setFavoriteButton() {
        if descriptionProduct.chosen {
            favoriteButton.setTitle("Удалить из избранного", for: .normal)
            favoriteButton.setTitleColor(.systemRed, for: .normal)
        } else {
            favoriteButton.setTitle("Добавить в избранное", for: .normal)
            favoriteButton.setTitleColor(.systemBlue, for: .normal)
        }
        
    }
    
}
