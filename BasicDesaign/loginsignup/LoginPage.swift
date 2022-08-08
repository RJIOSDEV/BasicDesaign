//
//  LoginPage.swift
//  BasicDesaign
//
//  Created by rajanOS on 08/02/22.
//

import UIKit

class LoginPage: UIViewController {
    @IBOutlet weak var signUP: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SigntoNext(_ sender: Any) {
      
            let vc = self.storyboard?.instantiateViewController(identifier: "SignupPage") as! SignupPage
            // vc.objOfEvent = self.aryOfBikeList[indexPath.row]
             self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

class CheckBox: UIButton {
    // Images
    let checkedImage = UIImage(named: "circle")! as UIImage
    let uncheckedImage = UIImage(named: "circle.fill")! as UIImage
    
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

