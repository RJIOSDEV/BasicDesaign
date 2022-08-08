//
//  anotherSignupViewController.swift
//  BasicDesaign
//
//  Created by rajanOS on 09/02/22.
//

import UIKit

class anotherSignupViewController: UIViewController {
    @IBOutlet weak var name3: UITextField!
    @IBOutlet weak var IMG: UIImageView!
    @IBOutlet weak var name4: UITextField!
    
    @IBOutlet weak var name10: UITextField!
    @IBOutlet weak var name11: UITextField!
    @IBOutlet weak var name9: UITextField!
    @IBOutlet weak var name8: UITextField!
    @IBOutlet weak var name7: UITextField!
    @IBOutlet weak var name6: UITextField!
    @IBOutlet weak var name5: UITextField!
    @IBOutlet weak var name2: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var Btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

      //  IMG.layer.borderWidth = 1
        
            IMG.layer.masksToBounds = true
            IMG.layer.borderColor = UIColor.gray.cgColor
           IMG.layer.cornerRadius = IMG.frame.height/2
            IMG.clipsToBounds = true
    
        
            name.layer.masksToBounds = true
        name.clipsToBounds = true
     //   name.layer.borderWidth = 1
        name.layer.borderColor = UIColor.gray.cgColor
       name.layer.cornerRadius = 14
        
        
        name2.layer.masksToBounds = true
    name2.clipsToBounds = true
     //  name2.layer.borderWidth = 1
        name2.layer.borderColor = UIColor.gray.cgColor
       name2.layer.cornerRadius = 14
        
        name3.layer.masksToBounds = true
    name3.clipsToBounds = true
      //  name3.layer.borderWidth = 1
        name3.layer.borderColor = UIColor.gray.cgColor
       name3.layer.cornerRadius = 14
        
        
        name4.layer.masksToBounds = true
    name4.clipsToBounds = true
      //  name4.layer.borderWidth = 1
        name4.layer.borderColor = UIColor.gray.cgColor
       name4.layer.cornerRadius = 14
        
        
        name5.layer.masksToBounds = true
    name5.clipsToBounds = true
       // name5.layer.borderWidth = 1
        name5.layer.borderColor = UIColor.gray.cgColor
       name5.layer.cornerRadius = 14
        
        
        name6.layer.masksToBounds = true
    name6.clipsToBounds = true
       // name6.layer.borderWidth = 1
        name6.layer.borderColor = UIColor.gray.cgColor
       name6.layer.cornerRadius = 14
        
        
        name7.layer.masksToBounds = true
    name7.clipsToBounds = true
       // name7.layer.borderWidth = 1
        name7.layer.borderColor = UIColor.gray.cgColor
       name7.layer.cornerRadius = 14
        
        
        name8.layer.masksToBounds = true
    name8.clipsToBounds = true
      //  name8.layer.borderWidth = 1
        name8.layer.borderColor = UIColor.gray.cgColor
       name8.layer.cornerRadius = 14
        
        
        name9.layer.masksToBounds = true
    name9.clipsToBounds = true
      //  name9.layer.borderWidth = 1
        name9.layer.borderColor = UIColor.gray.cgColor
       name9.layer.cornerRadius = 14
        
        
        name10.layer.masksToBounds = true
    name10.clipsToBounds = true
      //  name10.layer.borderWidth = 1
        name10.layer.maskedCorners = [.layerMinXMaxYCorner , .layerMinXMinYCorner]
      //  name10.layer.maskedCorners = [.layerMinXMinYCorner]
        name10.layer.borderColor = UIColor.gray.cgColor
       name10.layer.cornerRadius = 14
        
        name11.layer.masksToBounds = true
    name11.clipsToBounds = true
       // name11.layer.borderWidth = 1
        name11.layer.borderColor = UIColor.gray.cgColor
        name11.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
       name11.layer.cornerRadius = 14
        
        
     //   Btn.layer.borderWidth = 1
        Btn.layer.borderColor = UIColor.gray.cgColor
       Btn.layer.cornerRadius = 14
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

