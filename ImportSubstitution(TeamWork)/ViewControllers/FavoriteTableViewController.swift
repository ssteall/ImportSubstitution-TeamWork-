//
//  FavoriteTableViewController.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Дмитрий Мирошников on 10.04.2022.
//

import UIKit

class FavoriteTableViewController: UITableViewController {

    var importProducts: [ImportProduct]!
    
    private var favoriteProducts: [RussianProduct] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getFavoriteProduct()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        favoriteProducts.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteProduct", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = favoriteProducts[indexPath.row].name
        content.image = UIImage(named: favoriteProducts[indexPath.row].name)
        cell.contentConfiguration = content
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let index = tableView.indexPathForSelectedRow {
            let descriptionVC = segue.destination as! DescriptionAnalogProductViewController
            descriptionVC.descriptionProduct = favoriteProducts[index.row]
        }
       
    }

    private func getFavoriteProduct() {
        for product in importProducts {
            for rusProduct in product.analogues {
                if rusProduct.chosen == true {
                    favoriteProducts.append(rusProduct)
                }
            }
        }
    }
}
