//
//  4CollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 14/02/22.
//

import UIKit

class forthCollectionViewCell: UICollectionViewCell {
//

    static let identifier = "scell"
        static func nib() -> UINib {
            UINib(nibName: "forthCollectionViewCell", bundle: nil)
        }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
