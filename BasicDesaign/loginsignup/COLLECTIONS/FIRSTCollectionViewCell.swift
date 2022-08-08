//
//  FIRSTCollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 10/02/22.
//

import UIKit

class FIRSTCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var LBl2: UILabel!
    @IBOutlet weak var IMG2: UIImageView!
    
    
    static let identifier = "cell"
        static func nib() -> UINib {
            UINib(nibName: "FIRSTCollectionViewCell", bundle: nil)
        }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        IMG2.layer.masksToBounds = true
   //     IMG2.layer.clipsToBounds = true
        // Initialization code
    }

}
