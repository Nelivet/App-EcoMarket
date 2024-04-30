//
//  Product.swift
//  App-EcoMarket
//
//  Created by Ivette Fernandez on 22/04/24.
//

import Foundation
import UIKit

struct Product: Codable, Equatable{
    let id : Int
    let name: String
    let price: Double
    let description: String
    let image: URL
    let brand: String
    
}
extension Product {
    static func clearFavorites() {
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: favoritesKey)
    }
}
extension Product {
    static var favoritesKey: String {
        return "Favorites"
    }
    static func save(_ products: [Product], forKey key: String) {
      
        let defaults = UserDefaults.standard
  
        let encodedData = try! JSONEncoder().encode(products)
  
        defaults.set(encodedData, forKey: key)
    }
    static func getProducts(forKey key: String) -> [Product] {
    
        let defaults = UserDefaults.standard
     
        if let data = defaults.data(forKey: key) {
            let decodedProducts = try! JSONDecoder().decode([Product].self, from: data)
         
            return decodedProducts
        } else {
        
            return []
        }
    }
    
    //---
    func addToFavorites() {
        
        var favoriteProducts =
        Product.getProducts(forKey: Product.favoritesKey)
        if !favoriteProducts.contains(self) {
            favoriteProducts.append(self)
            
            Product.save(favoriteProducts, forKey: Product.favoritesKey)
        }
    }
    func removeFromFavorites() {
 
        var favoriteProducts = Product.getProducts(forKey: Product.favoritesKey)

        favoriteProducts.removeAll { product in
   
            return self == product
        }

        Product.save(favoriteProducts, forKey: Product.favoritesKey)
    }
}
