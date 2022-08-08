//
//  ListMCollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 12/02/22.
//

import UIKit

class ListMCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgh: UIImageView!
    
    static let identifier = "cell"
        static func nib() -> UINib {
            UINib(nibName: "ListMCollectionViewCell", bundle: nil)
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
