//
//  FitlterVC.swift
//  BasicDesaign
//
//  Created by rajanOS on 09/02/22.
//

import UIKit

class FitlterVC: UIViewController {
    @IBOutlet weak var seg2: UISegmentedControl!
    
    @IBOutlet weak var seg3: UISegmentedControl!
    @IBOutlet weak var seg1: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
       seg1.layer.masksToBounds = true
        seg1.layer.cornerRadius = seg1.frame.width/2
        seg1.layer.backgroundColor = UIColor.lightGray.cgColor
        //(white:1 , alpha: 0.5)
        
    //    MyimageD.layer.cornerRadius = MyimageD.frame.width/14.5
       // MyimageD.layer.borderWidth = 2
        seg1.layer.borderWidth = 2
        seg1.layer.borderColor = UIColor.red.cgColor
   
    
        
        
        // Do any additional setup after loading the view.
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
