//
//  AnotherViewController.swift
//  BasicDesaign
//
//  Created by rajanOS on 14/02/22.
//

import UIKit

class AnotherViewController: UIViewController {
    @IBOutlet weak var onecollection: UICollectionView!
    @IBOutlet weak var fourcollection: UICollectionView!
    
    @IBOutlet weak var twocollection: UICollectionView!
    @IBOutlet weak var threecollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        onecollection.dataSource = self
        onecollection.delegate = self
        
        twocollection.dataSource = self
        twocollection.delegate = self
        
        threecollection.dataSource = self
        threecollection.delegate = self
        
        fourcollection.dataSource = self
        fourcollection.delegate = self
        // Do any additional setup after loading the view.
   
    
        onecollection.register(_CollectionViewCell.nib(), forCellWithReuseIdentifier:
                                _CollectionViewCell.identifier)
        
        twocollection.register(secndCollectionViewCell.nib(), forCellWithReuseIdentifier:
                                secndCollectionViewCell.identifier)
        
        threecollection.register(secndCollectionViewCell.nib(), forCellWithReuseIdentifier:
                            secndCollectionViewCell.identifier)
        
    fourcollection.register(forthCollectionViewCell.nib(), forCellWithReuseIdentifier:
                            forthCollectionViewCell.identifier)
    
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

extension AnotherViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        if collectionView == onecollection{
            return 1
        }else {
            
             if collectionView == twocollection {
                return 1
             }else{
                 if collectionView == threecollection{
                     return 1
                 } else{
                     return 1
                 }
             }
        }
        
        
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
   
        if collectionView == onecollection {
            
            let cell = onecollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!  _CollectionViewCell
            collectionView.register(UICollectionView.self, forCellWithReuseIdentifier: "cell")
            cell.layer.borderColor = UIColor.gray.cgColor
            
            return cell
        }
        
        else {
            if collectionView == twocollection {
                
                let onecell = twocollection.dequeueReusableCell(withReuseIdentifier: "onecell", for: indexPath) as!  secndCollectionViewCell
                collectionView.register(UICollectionView.self, forCellWithReuseIdentifier: "onecell")
   
                onecell.layer.borderColor = UIColor.gray.cgColor
                
                return onecell
            }
            else{

               if collectionView == threecollection {

                    let tcell = threecollection.dequeueReusableCell(withReuseIdentifier: "tcell", for: indexPath) as!  thirdCollectionViewCell
                collectionView.register(UICollectionView.self, forCellWithReuseIdentifier: "tcell")
       
                    tcell.layer.borderColor = UIColor.gray.cgColor

                    return tcell
                }
                
                else {




                        let scell = fourcollection.dequeueReusableCell(withReuseIdentifier: "scell", for: indexPath) as!  forthCollectionViewCell

           
                        scell.layer.borderColor = UIColor.gray.cgColor

                        return scell
                    }

                
            }
        
   
        }
    }
}
