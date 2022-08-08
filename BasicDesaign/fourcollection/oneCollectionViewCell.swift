//
//  oneCollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class oneCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var btngo: UIButton!
    
    @IBOutlet weak var lbl1: UILabel!
    static let identifier = "cell"
        static func nib() -> UINib {
            UINib(nibName: "oneCollectionViewCell", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  
}
