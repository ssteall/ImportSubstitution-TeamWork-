//
//  RussProductTableViewController.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Максим Гурков on 11.04.2022.
//

import UIKit

class RussProductTableViewController: UITableViewController {
    
    var analogProduct: [RussianProduct] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return analogProduct.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "analogCell", for: indexPath)
        var context = cell.defaultContentConfiguration()
        let analog = analogProduct[indexPath.row]
        context.text = analog.name

        cell.contentConfiguration = context
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
