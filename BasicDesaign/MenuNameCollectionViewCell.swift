//
//  MenuNameCollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 10/02/22.
//

import UIKit
class MenuNameCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var LblName: UILabel!
    
    static let identifier = "cell"
        static func nib() -> UINib {
            UINib(nibName: "MenuNameCollectionViewCell", bundle: nil)
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        // Initialization code
    }

}
