//
//  2CollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 14/02/22.
//

import UIKit

class secndCollectionViewCell: UICollectionViewCell {
  //  @IBOutlet weak var checkbox1: CheckBox1!
    
    
    static let identifier = "onecell"
        static func nib() -> UINib {
            UINib(nibName: "secndCollectionViewCell", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
//
