//
//  ViewController.swift
//  App-EcoMarket
//
//  Created by Ivette Fernandez on 19/04/24.

//  Created by Ivette Fernandez on 19/04/24.
//

import UIKit
import Nuke

class ViewController: UIViewController, UITableViewDataSource{
    
   
    private  var products: [Product] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  Product.clearFavorites()
        tableView.dataSource = self
        //tableView.delegate = self
       fetchProducts()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

      
        if let selectedIndexPath = tableView.indexPathForSelectedRow {

        
            tableView.deselectRow(at: selectedIndexPath, animated: animated)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedIndexPath = tableView.indexPathForSelectedRow else { return }

        let selectedProduct = products[selectedIndexPath.row]

       
        guard let detailViewController = segue.destination as? DetailViewController else { return }

        detailViewController.product = selectedProduct
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("😁 numberOfRowsInSection called with products count: \(products.count)")
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("😁 cellForRowAt called for row: \(indexPath.row)")
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductCell
        let product = products[indexPath.row]
        
        let imageUrl = product.image
            Nuke.loadImage(with: imageUrl, into: cell.mainImageView)
        
        cell.titleLabel.text = product.name
        cell.priceLabel.text = "$" + String(product.price)
        cell.brandLabel.text = product.brand
        
       
            return cell
    }
  
    func fetchProducts() {
        // URL de la API de productos
        let urlString = "https://codepathivetteapp.azurewebsites.net/api/Product/GetAllProducts"
        
        guard let url = URL(string: urlString) else {
            print("INVALID URL")
            return
        }
        let config = URLSessionConfiguration.default
            config.timeoutIntervalForRequest = 30
        // Create url session
        let session = URLSession.shared.dataTask(with: url) { data, response, error in
          
            if let error = error {
                print("❌ Error: \(error.localizedDescription)")
                return
            }

           
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, (200...299).contains(statusCode) else {
                print("❌ Response error: \(String(describing: response))")
                return
            }

            guard let data = data else {
                print("❌ Data is NIL")
                return
            }

            // Parsear dto JSON en objetos Product
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                guard let jsonData = json as? [String: Any], let productsData = jsonData["data"] as? [[String: Any]] else {
                    print("❌ Error: Could not parse JSON data")
                    return
                }
                let products = try JSONDecoder().decode([Product].self, from: JSONSerialization.data(withJSONObject: productsData, options: []))
                          
                    DispatchQueue.main.async { [weak self] in
                       
              
                    self?.products = products
                    self?.tableView.reloadData()
                        print("😁 Fetched and stored \(products.count) products")
                      
                        for product in products {
                            print("Product: \(product.name), Price: \(product.price)")
                            
                        }
                }
            } catch {
                print("❌ Error decoding JSON:  \(error.localizedDescription)")
            }
        }

        // Empezar la tarea
        session.resume()
    }

    
}
