//
//  CategoryTableViewController.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Дмитрий Мирошников on 09.04.2022.
//

import UIKit

class CategoryTableViewController: UITableViewController {

    var importProducts: [ImportProduct]!
    
    private var categories: [String] = []
    private var productsOfChosenCategory: [ImportProduct] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCategoryList()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = "Выбор категории"
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "category", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let category = categories[indexPath.row]
        content.text = category
        content.image = UIImage(named: category)
        content.imageProperties.maximumSize.height = 50
        content.imageProperties.maximumSize.width = 50
        content.imageProperties.cornerRadius = 25
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let importProductVC = segue.destination as? ImportProductTableViewController else { return }
        getProductsFromChosenCategory()
        importProductVC.importProducts = productsOfChosenCategory
    }
    
    // MARK: - Private func
    private func getCategoryList() {
        for product in importProducts {
            if !categories.contains(product.category.rawValue) {
                categories.append(product.category.rawValue)
            }
        }
    }
    
    private func getProductsFromChosenCategory() {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        productsOfChosenCategory = []
        for product in importProducts {
            if product.category.rawValue == categories[indexPath.row] {
                productsOfChosenCategory.append(product)
            }
        }
    }

}
