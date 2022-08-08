//
//  INSTACollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 12/02/22.
//

import UIKit

class INSTACollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var IMAGE4: UIImageView!
    
    static let identifier = "cell"
        static func nib() -> UINib {
            UINib(nibName: "INSTACollectionViewCell", bundle: nil)
        }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
