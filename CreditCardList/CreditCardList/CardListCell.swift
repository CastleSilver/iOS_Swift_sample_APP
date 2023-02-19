//
//  CardListCell.swift
//  CreditCardList
//
//  Created by tmoney on 2023/02/18.
//

import UIKit

class CardListCell: UITableViewCell {

    @IBOutlet weak var cardNameLabel: UILabel!
    @IBOutlet weak var promotionLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var cardImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
