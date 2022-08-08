//
//  ViewController3.swift
//  BasicDesaign
//
//  Created by rajanOS on 10/02/22.
//

import UIKit

class ViewController3: UIViewController {
    @IBOutlet weak var NameCollection: UICollectionView!
    
    @IBOutlet weak var ListCollection: UICollectionView!
    
    let items = ["Daily news","twitter","pchs website","calenders","staff contacts","ibmyp","soccer concentration","Leadership","athletics","Daily news","twitter","pchs website","calenders","staff contacts","ibmyp","soccer concentration","Leadership","athletics",]
    
    
    let items1 = ["Daily news","twitter"]
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
        NameCollection.dataSource = self
        NameCollection.delegate = self
        ListCollection.dataSource = self
        ListCollection.delegate = self
        
        NameCollection.register(MenuNameCollectionViewCell.nib(), forCellWithReuseIdentifier:
                                        MenuNameCollectionViewCell.identifier)
        ListCollection.register(CollectionViewCell3.nib(), forCellWithReuseIdentifier: CollectionViewCell3.identifier)
     
        // Do any additional setup after loading the view.
    }
    

 

}
extension ViewController3 : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if collectionView == ListCollection {
    
        return CGSize(width:ListCollection.frame.width/0.7, height: 130)
        } else
        {
            return CGSize(width: NameCollection.frame.width/2.1, height: 30)
        }
    

    
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        if collectionView == NameCollection {
        return UIEdgeInsets(top: 90, left: 9, bottom: 0, right: 5)
        }else{
            
         return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == NameCollection {
        return 0
        }else{
            
         return 0
        }
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == NameCollection {
        return 5
        }else{
            
         return 0
        }
        }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == NameCollection {
            
            return items1.count
        } else {
            
            
            return items.count
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == NameCollection {
            
            let cell = NameCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!  MenuNameCollectionViewCell
            
        //    cell.MEnuMAin.text = newManuList[indexPath.row].Menu
            cell.LblName.text = items[indexPath.row]
            cell.layer.borderWidth = 2
            cell.layer.borderColor = UIColor.gray.cgColor
            
            return cell
        }
        
        else {
            
            
            let Newcell = ListCollection.dequeueReusableCell(withReuseIdentifier: "Newcell", for: indexPath) as! CollectionViewCell3
            
            Newcell.lblbl.text = items[indexPath.row]
            Newcell.IMAGE.image = itemImg[indexPath.row]
            Newcell.layer.borderWidth = 0.5
           // Newcell.layer.borderColor = UIColor.yellow.cgColor
        
            return Newcell
        }
    }
}
