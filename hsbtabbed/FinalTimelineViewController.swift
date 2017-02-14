//
//  FinalTimelineViewController.swift
//  hsbtabbed
//
//  Created by Scott Powell on 7/13/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import UIKit

class FinalTimelineViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    // this is the new timeline view controller class that will not be used
    
    let timelineImages = ["event1.png", "event2.png", "event3.png", "event4.png", "event5.png", "event6.png", "event7.png", "event8.png", "event9.png", "event10.png", "event11.png"]
    
    let timelineTitles = ["Nuremberg Race Laws", "Anti-Semitic Exhibition", "Kristallnacht", "First Kindertransport", "German Invasion of Poland", "Krakow Ghetto Established", "Babi Yar Massacre", "Chelmo Killing Operations", "Wannsee Conference", "Warsaw Ghetto Uprising", "Liberation of Dauchau"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //print("This is in use")
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // implement methods for the collectionViewDataSource superclass
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myViewCell
        
        
        
        cell.imgView.image = UIImage(named: timelineImages[indexPath.row])
        cell.imgView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        
        // title label set up
        cell.titleLabel.font = UIFont(name: "HelveticaNeueThin", size: 16)
        cell.titleLabel.font = cell.titleLabel.font.withSize(25)
        cell.titleLabel.textAlignment = .center
        cell.titleLabel.text = timelineTitles[indexPath.row]
        
        cell.backgroundColor = UIColor.gray
        
        cell.timelineImgView.image = UIImage(named: "historical_timeline.png")
        
        return cell
    }    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return timelineImages.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //print("Button \(indexPath) selected")
    }
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        var cell = collectionView.cellForItem(at: indexPath)
        //cell.tint color update to gray...
        
        
    }

}
