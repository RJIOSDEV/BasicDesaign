//
//  SecondCollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 10/02/22.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var oCheck: UIImageView!
    @IBOutlet weak var oPrice: UILabel!
    @IBOutlet weak var Odate: UILabel!
    @IBOutlet weak var Oitm: UILabel!
    @IBOutlet weak var Omnth: UILabel!
    @IBOutlet weak var OLbl: UILabel!
    @IBOutlet weak var lIMG1: UIImageView!
  
    
    
    static let identifier = "cell"
        static func nib() -> UINib {
            UINib(nibName: "SecondCollectionViewCell", bundle: nil)
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        lIMG1.layer.masksToBounds = true
        // Initialization code
    }

}
