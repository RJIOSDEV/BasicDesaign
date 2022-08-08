//
//  COLLECTIONViewController.swift
//  BasicDesaign
//
//  Created by rajanOS on 09/02/22.
//

import UIKit

class COLLECTIONViewController: UIViewController {

    @IBOutlet weak var MyCollection: UICollectionView!
    
    let items = ["Daily news","twitter","pchs website","calenders","staff contacts","ibmyp","soccer concentration","Leadership","athletics","Daily news","twitter","pchs website","calenders","staff contacts","ibmyp","soccer concentration","Leadership","athletics",]
    
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
        MyCollection.delegate = self
        MyCollection.dataSource = self
        // Do any additional setup after loading the view.
        
        MyCollection.register(FIRSTCollectionViewCell.nib(), forCellWithReuseIdentifier:
                                FIRSTCollectionViewCell.identifier)
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
extension COLLECTIONViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = MyCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FIRSTCollectionViewCell
        
        cell.LBl2.text = items[indexPath.row]
        cell.IMG2.image = itemImg[indexPath.row]
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.yellow.cgColor
         return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
//    {
//
//        return CGSize(width:MyCollection.frame.width/2.33, height: 100)
//
//}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
    
    
        return CGSize(width:MyCollection.frame.width/3.189, height: 158)
}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 10.5, bottom: 0, right: 10.5)
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
//        return CGSize.zero
//    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc : ListViewController = storyboard?.instantiateViewController(identifier: "ListViewController") as! ListViewController
        self.navigationController?.pushViewController( vc, animated: true)
    }
}
