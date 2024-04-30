//
//  FavoriteCell.swift
//  App-EcoMarket
//
//  Created by Ivette Fernandez on 29/04/24.
//

import UIKit

class FavoriteCell: UITableViewCell {

    @IBOutlet weak var mainImgeView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
