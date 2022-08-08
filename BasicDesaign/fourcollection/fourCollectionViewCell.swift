//
//  fourCollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class fourCollectionViewCell: UICollectionViewCell {

    static let identifier = "scell"
        static func nib() -> UINib {
            UINib(nibName: "fourCollectionViewCell", bundle: nil)
        }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
