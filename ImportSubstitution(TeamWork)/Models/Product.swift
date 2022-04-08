//
//  Product.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Дмитрий Мирошников on 09.04.2022.
//


struct ImportProduct {
    let name: String
    let description: String
    let analogues: [RussianProduct]
    let category: Category
    
    static func getProducts() -> [ImportProduct] {
        let products = DataManager.shared.importProduct
        return products
    }
}

struct RussianProduct {
    let name: String
    let description: String
    let price: Double
    let rate: Double
    let chosen = false
}

enum Category: String {
    case medicines = "Лекартсва"
    case food = "Продукты питания"
    case software = "Программное обеспечение"
}
