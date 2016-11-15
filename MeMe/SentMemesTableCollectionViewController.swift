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
    
    override func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MeMeCell")! as UITableViewCell
        let meme = self.memes[indexPath.row]
        
        cell.imageView?.image = meme.memedImage
        
        return cell
    }
}
