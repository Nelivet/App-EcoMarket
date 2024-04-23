//
//  Product.swift
//  App-EcoMarket
//
//  Created by Ivette Fernandez on 22/04/24.
//

import Foundation
import UIKit

struct Product: Decodable{
    let id : Int
    let name: String
    let price: Double
    let description: String
    let image: URL
    let brand: String
    
}
