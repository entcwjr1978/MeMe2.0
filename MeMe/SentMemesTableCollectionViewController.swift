//
//  SentMemesTableCollectionViewController.swift
//  MeMe
//
//  Created by Williams, Ed (CMG-Atlanta) on 11/13/16.
//  Copyright © 2016 Edward Williams. All rights reserved.
//

import UIKit

class SentMemesTableViewController:UITableViewController {
    var memes: [Meme] {
        return (UIApplication.shared.delegate as! AppDelegate).memes
    }
}
