//
//  CollectionViewCell3.swift
//  BasicDesaign
//
//  Created by rajanOS on 10/02/22.
//

import UIKit

class CollectionViewCell3: UICollectionViewCell {
    @IBOutlet weak var Buttnmds: UIButton!
    @IBOutlet weak var lblbl: UILabel!
    @IBOutlet weak var Valuelbl: UILabel!
    @IBOutlet weak var userLbl: UILabel!
    @IBOutlet weak var IMAGE: UIImageView!
    
    
    
    
    static let identifier = "Newcell"
        static func nib() -> UINib {
            UINib(nibName: "CollectionViewCell3", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        IMAGE.layer.masksToBounds = true
        IMAGE.layer.cornerRadius = IMAGE.frame.height/2.1
        IMAGE.clipsToBounds = true
        
        Buttnmds.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        Buttnmds.layer.cornerRadius = 14
    }

}
