//
//  SentMeMeCollectionViewController.swift
//  MeMe
//
//  Created by Williams, Ed (CMG-Atlanta) on 11/13/16.
//  Copyright © 2016 Edward Williams. All rights reserved.
//

import UIKit

class SentMemesCollectionViewController:UICollectionViewController {
    @IBOutlet weak var flowLayout:UICollectionViewFlowLayout!
    
    var memes: [Meme] {
        return (UIApplication.shared.delegate as! AppDelegate).memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let space: CGFloat = 3.0
        let dimensionX = (view.frame.size.width - (2 * space)) / 3.0
        let dimensionY = (view.frame.size.height - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.itemSize = CGSize(width: dimensionX, height: dimensionY)
    }
    
    
}
