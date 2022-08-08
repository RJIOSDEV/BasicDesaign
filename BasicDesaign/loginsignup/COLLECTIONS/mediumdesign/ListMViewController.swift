//
//  ListMViewController.swift
//  BasicDesaign
//
//  Created by rajanOS on 12/02/22.
//

import UIKit

class ListMViewController: UIViewController {
    
    

    @IBOutlet weak var Fcollection: UICollectionView!
    
    
    
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
        
        Fcollection.dataSource = self
        Fcollection.delegate = self

        Fcollection.register(ListMCollectionViewCell.nib(), forCellWithReuseIdentifier:
                                        ListMCollectionViewCell.identifier)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
  
    
    
}
extension ListMViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return itemImg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = Fcollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ListMCollectionViewCell
        
      //  cell.OLbl.text = items[indexPath.row]
        cell.imgh.image = itemImg[indexPath.row]
        cell.layer.borderWidth = 0.5
      //  cell.layer.borderColor = UIColor.gray.cgColor
         return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {

        return CGSize(width:Fcollection.frame.width/1, height: 120)

}
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
//    {
//
//
//        return CGSize(width:MyCollectino2.frame.width/1, height: 120)
//}
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        
//        return UIEdgeInsets(top: 0, left: 10.5, bottom: 0, right: 10.5)
//        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
//        return CGSize.zero
//    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let vc : ListViewController = storyboard?.instantiateViewController(identifier: "ListViewController") as! ListViewController
//        self.navigationController?.pushViewController( vc, animated: true)
//    }
}
