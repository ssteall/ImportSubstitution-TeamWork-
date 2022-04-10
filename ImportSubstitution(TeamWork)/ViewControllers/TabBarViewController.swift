//
//  TabBarViewController.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Дмитрий Мирошников on 10.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    var importProducts = ImportProduct.getProducts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferDataToVC()
    }
    
    private func transferDataToVC() {
        let viewControllers = self.viewControllers
        let categoryVC = viewControllers?.first as! CategoryTableViewController
        let favoriteVC = viewControllers?.last as! FavoriteTableViewController
        
        categoryVC.importProducts = importProducts
        favoriteVC.importProducts = importProducts
    }
}
