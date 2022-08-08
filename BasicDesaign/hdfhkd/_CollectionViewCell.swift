//
//  1CollectionViewCell.swift
//  BasicDesaign
//
//  Created by rajanOS on 14/02/22.
//

import UIKit

class _CollectionViewCell: UICollectionViewCell {

    
    
    static let identifier = "cell"
        static func nib() -> UINib {
            UINib(nibName: "_CollectionViewCell", bundle: nil)
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    class CheckBox: UIButton {
        // Images
        let checkedImage = UIImage(named: "ic_check_box")! as UIImage
        let uncheckedImage = UIImage(named: "ic_check_box_outline_blank")! as UIImage
        
        // Bool property
        var isChecked: Bool = false {
            didSet {
                if isChecked == true {
                    self.setImage(checkedImage, for: UIControl.State.normal)
                } else {
                    self.setImage(uncheckedImage, for: UIControl.State.normal)
                }
            }
        }
            
        override func awakeFromNib() {
            self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
            self.isChecked = false
        }
            
        @objc func buttonClicked(sender: UIButton) {
            if sender == self {
                isChecked = !isChecked
            }
        }
    }
}
