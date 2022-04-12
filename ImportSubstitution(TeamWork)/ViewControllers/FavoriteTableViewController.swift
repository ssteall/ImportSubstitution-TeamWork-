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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getFavoriteProduct()
        tableView.reloadData()
        getDeleteFavoriteProduct()
        self.tabBarController?.navigationItem.title = "Избранное"
    }
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        favoriteProducts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteProduct", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let product = favoriteProducts[indexPath.row]
        
        content.text = product.name
        content.image = UIImage(named: product.name)
        content.imageProperties.maximumSize.height = 50
        content.imageProperties.maximumSize.width = 50
        content.imageProperties.cornerRadius = 25
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
        favoriteProducts = []
        for product in importProducts {
            for rusProduct in product.analogues {
                if rusProduct.chosen {
                    favoriteProducts.append(rusProduct)
                }
            }
        }
    }
    
    private func getDeleteFavoriteProduct() {
        for product in favoriteProducts {
            if !product.chosen {
                favoriteProducts = favoriteProducts.filter{ $0 !== product }
                tableView.reloadData()
            }
        }
    }
}
