//
//  FavoritesViewController.swift
//  App-EcoMarket
//
//  Created by Ivette Fernandez on 23/04/24.
//

import UIKit
import Nuke

class FavoritesViewController: UIViewController {

    var favoriteProducts: [Product] = []
    
    @IBOutlet weak var favoriteTableView: UITableView!
    @IBOutlet weak var noFavoritesLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteTableView.dataSource = self
               favoriteTableView.delegate = self
        self.navigationItem.title = "Favorites"
        navigationController?.navigationBar.prefersLargeTitles = true
           }
           
           override func viewWillAppear(_ animated: Bool) {
               super.viewWillAppear(animated)
               
               // Cargar los productos favoritos desde UserDefaults
               favoriteProducts = Product.getProducts(forKey: Product.favoritesKey)
               
               // ---
               favoriteTableView.reloadData()
               let favoriteProducts = Product.getProducts(forKey: Product.favoritesKey)
                     if favoriteProducts.isEmpty {
                       
                         noFavoritesLabel.isHidden = false
                     } else {
                         
                         noFavoritesLabel.isHidden = true
                     }
           }
       }

       extension FavoritesViewController: UITableViewDataSource, UITableViewDelegate {
           
           func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
               return favoriteProducts.count
           }
           
           func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteCell", for: indexPath) as! FavoriteCell
               
               let product = favoriteProducts[indexPath.row]
               // Configurar la celda con la información del producto
               cell.titleLabel.text = product.name
               cell.priceLabel.text = "$" + String(product.price)
               cell.brandLabel.text = product.brand
               let imageUrl = product.image
               Nuke.loadImage(with: imageUrl, into: cell.mainImgeView)
               
               return cell
           }
           
           func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
               // Manejar la selección de una celda si es necesario
           }
       }
