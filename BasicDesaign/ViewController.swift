//
//  ViewController.swift
//  BasicDesaign
//
//  Created by rajanOS on 08/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}
extension UIStackView {
     func insertViewIntoStack(background: UIColor, cornerRadius: CGFloat, borderColor: CGColor, borderWidth: CGFloat) {
        let subView = UIView(frame: bounds)
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        subView.layer.cornerRadius = 2
         subView.backgroundColor = .brown
         subView.layer.borderColor = CGColor.init(red: 100, green: 0, blue: 0, alpha: 0
         )
        subView.layer.borderWidth = 10
         
        insertSubview(subView, at: 0)
    }
    }
