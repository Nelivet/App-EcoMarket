//
//  DetailViewController.swift
//  App-EcoMarket
//
//  Created by Ivette Fernandez on 23/04/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    var product: Product!
    var isFavorite: Bool = false
    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var favoriteButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = product.name
        priceLabel.text = "$" + String(product.price)
        descriptionTextView.text = product.description
        
        let imageUrl = product.image
            Nuke.loadImage(with: imageUrl, into: backdropImageView)
        
        navigationItem.largeTitleDisplayMode = .never
        
        favoriteButton.layer.cornerRadius = favoriteButton.frame.width / 2
        // Verificar si el producto es favorito y actualizar el botón de favoritos
        isFavorite = isProductFavorite()
        updateFavoriteButtonAppearance()

    }
    
    func isProductFavorite() -> Bool {
            let favoriteProducts = Product.getProducts(forKey: Product.favoritesKey)
            return favoriteProducts.contains(product)
        }
        
        func updateFavoriteButtonAppearance() {
            favoriteButton.isSelected = isFavorite
        }
        

    @IBAction func didTapFavoriteButton(_ sender: UIButton) {
      //  sender.isSelected = !sender.isSelected
        isFavorite = !isFavorite
               updateFavoriteButtonAppearance()
        
        if isFavorite {
            product.addToFavorites()
            
            print("✅ product added to favorites ❤️" , product.name)
        } else {
            print("❌ product removed from favorites ❤️ ", product.name)
            product.removeFromFavorites()
        }
    }
}
