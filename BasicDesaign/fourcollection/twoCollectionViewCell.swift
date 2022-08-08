//
//  twoCollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 16/02/22.
//

import UIKit

class twoCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lbl2: UILabel!
    
    @IBOutlet weak var btn1stck: UIStackView!
    
    @IBOutlet weak var btn2stack: UIStackView!

    
    static let identifier = "onecell"
        static func nib() -> UINib {
            UINib(nibName: "twoCollectionViewCell", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
//

