//
//  ViewController.swift
//  dragAndDropsample
//
//  Created by user on 28/01/20.
//  Copyright © 2020 TechwareSolution. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
  
    
    @IBOutlet weak var collectionView1: UICollectionView!
    
      private var items1 = ["none", "chrome", "fade", "falseColor", "instant", "mono", "noir", "process", "sepia", "tonal", "transfer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView1.dragInteractionEnabled = true
//        self.collectionView1.dragDelegate = self
//        self.collectionView1.dropDelegate = self

        // Do any additional setup after loading the view, typically from a nib.
    }

    
    // MARK: - UICollectionViewDataSource Methods
    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
        {
            return  self.items1.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
        {
           
        
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! DragDropCollectionViewCell
                cell.img_custom_img?.image = UIImage(named: self.items1[indexPath.row])
                
                return cell
           
           
      
    }

}

