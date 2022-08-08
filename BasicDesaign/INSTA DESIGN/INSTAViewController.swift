//
//  INSTAViewController.swift
//  BasicDesaign
//
//  Created by rajanOS on 12/02/22.
//

import UIKit

class INSTAViewController: UIViewController {

    @IBOutlet weak var NCOLLECTION: UICollectionView!
    
    let itemImg :[UIImage] = [
    
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!,
        UIImage(named: "4")!,
        UIImage(named: "5")!,
        UIImage(named: "6")!,
        UIImage(named: "7")!,
        UIImage(named: "8")!,
        UIImage(named: "9")!,
        UIImage(named: "10")!,
        UIImage(named: "11")!,
        UIImage(named: "12")!,
        UIImage(named: "13")!,
        UIImage(named: "14")!,
        UIImage(named: "15")!,
        UIImage(named: "16")!,
        UIImage(named: "17")!,
        UIImage(named: "18")!,
        UIImage(named: "1")!,
        UIImage(named: "1")!,
        
    
    
    
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
      
        NCOLLECTION.register(INSTACollectionViewCell.nib(), forCellWithReuseIdentifier:
                                        INSTACollectionViewCell.identifier)
    
        // Do any additional setup after loading the view.
    }
    

 

}
extension INSTAViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemImg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = NCOLLECTION.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!  INSTACollectionViewCell
        
    //    cell.MEnuMAin.text = newManuList[indexPath.row].Menu
        cell.IMAGE4.image = itemImg[indexPath.row]
        return cell
    }
    
    
    
    
}
