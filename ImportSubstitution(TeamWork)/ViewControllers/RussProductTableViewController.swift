//
//  RussProductTableViewController.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Максим Гурков on 11.04.2022.
//

import UIKit

class RussProductTableViewController: UITableViewController {
    
    @IBOutlet var priceLabel: UILabel!
    var analogProduct: [RussianProduct] = []

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return analogProduct.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "analogCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let analog = analogProduct[indexPath.row]
        
        content.text = analog.name
        content.image = UIImage(named: analog.name)
        content.imageProperties.maximumSize.height = 50
        content.imageProperties.maximumSize.width = 50
        content.imageProperties.cornerRadius = 25
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let index = tableView.indexPathForSelectedRow {
            let descriptionVC = segue.destination as! DescriptionAnalogProductViewController
            descriptionVC.descriptionProduct = analogProduct[index.row]
        }
       
    }
    
}
