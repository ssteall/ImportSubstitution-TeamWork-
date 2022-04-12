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
        title = "Выбор категории"
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "category", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = categories[indexPath.row]
        content.image = UIImage(named: categories[indexPath.row])
        content.imageProperties.maximumSize.height = 50
        content.imageProperties.maximumSize.width = 50
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
