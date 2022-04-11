//
//  Product.swift
//  ImportSubstitution(TeamWork)
//
//  Created by Дмитрий Мирошников on 09.04.2022.
//


class ImportProduct {
    let name: String
    let description: String
    let analogues: [RussianProduct]
    var category: Category
    
    static func getProducts() -> [ImportProduct] {
        let products = DataManager.shared.importProduct
        return products
    }
    
    init(name: String, description: String, analogues: [RussianProduct], category: Category){
        self.category = category
        self.name = name
        self.description = description
        self.analogues = analogues
    }
}

class RussianProduct {
    let name: String
    let description: String
    let price: Double
    let rate: Double
    var chosen = false
    
    init(name: String, description: String, price: Double, rate: Double){
        self.name = name
        self.description = description
        self.price = price
        self.rate = rate
    }
}

enum Category: String {
    case medicines = "Лекартсва"
    case food = "Продукты питания"
    case software = "Программное обеспечение"
    case sports = "Спортивная одежда"
}
