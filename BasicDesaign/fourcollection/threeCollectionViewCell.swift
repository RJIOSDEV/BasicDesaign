//
//  threeCollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class threeCollectionViewCell: UICollectionViewCell {



    static let identifier = "tcell"
        static func nib() -> UINib {
            UINib(nibName: "threeCollectionViewCell", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
