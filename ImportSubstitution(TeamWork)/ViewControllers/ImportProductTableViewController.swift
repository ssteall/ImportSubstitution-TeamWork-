//
//  ImportProductTableViewController.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Дмитрий Мирошников on 10.04.2022.
//

import UIKit

class ImportProductTableViewController: UITableViewController {

    var importProducts: [ImportProduct]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return importProducts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "importProduct", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let product = importProducts[indexPath.row]
        content.text = product.name
        content.image = UIImage(named: product.name)
        content.imageProperties.maximumSize.height = 50
        content.imageProperties.maximumSize.width = 50
        content.imageProperties.cornerRadius = 25
        cell.contentConfiguration = content
        return cell
    }
        
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let descriptionVC = segue.destination as! DescriptionImportProductViewController
            descriptionVC.descriptionImportProduct = importProducts[indexPath.row]
        }
        
    }
    

}
