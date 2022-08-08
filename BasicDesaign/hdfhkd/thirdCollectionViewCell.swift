//
//  3CollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 14/02/22.
//

import UIKit

class thirdCollectionViewCell: UICollectionViewCell {

    static let identifier = "tcell"
        static func nib() -> UINib {
            UINib(nibName: "thirdCollectionViewCell", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
