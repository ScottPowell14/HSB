//
//  PagesViewController.swift
//  hsbtabbed
//
//  Created by Scott Powell on 6/22/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import UIKit

class PagesViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
// this class describes the delegate and data source protocols for the page turning effect and also contains the code to add in the data of the different pages
    
    var pageController: UIPageViewController?
    var pageContent = NSArray()
    var pageImages = NSArray()
    var pageCaptions = NSArray()
    var survivorName: String?
    
    let survivorNames = ["Renee":"Renee Fink", "Frank":"Frank Fischer", "Esther": "Esther Lederman", "Hal":"Hal Myers", "Henry":"Henry Landsberger", "Albrecht":"Albrecht Strauss", "Jessie":"Jessie McIntyre", "Marianne":"Marianne Roberts", "Marlene":"Marlene Appley", "Peter":"Peter Stein", "Rebecca":"Rebecca Hauser", "Robert":"Robert Patton"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createContentPages()
        navigationItem.title = survivorNames[survivorName!]
        
        // instantiating a UIPageViewController instance that will act as the data source and delegate for the survivor pages
        pageController = UIPageViewController(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
        
        pageController?.delegate = self
        pageController?.dataSource = self
        
        let startingViewController: SurvivorViewController = viewControllerAtIndex(0)!
        
        let viewControllers: NSArray = [startingViewController]
        // switched from [AnyObject] to [UIViewController]
        pageController!.setViewControllers(viewControllers as! [UIViewController], direction: .forward, animated: false, completion: nil)
        
        self.addChildViewController(pageController!)
        self.view.addSubview(self.pageController!.view)
        
        let pageViewRect = self.view.bounds
        pageController!.view.frame = pageViewRect
        pageController!.didMove(toParentViewController: self)
        
    }
    
    func createContentPages() {
        var pageStrings = [String]()
        var imageStrings = [String]()
        var captionStrings = [String]()
        
        // this is where we can add the bio paragraphs, we will need to do some auto layout in the SurvivorViewController class.
        
        let survivorDataAccessor = Survivor()
        let survivorToBios = survivorDataAccessor.namesToBio
        let survivorToImages = survivorDataAccessor.namesToImages
        let survivorToCaptions = survivorDataAccessor.namesToCaptions
        
        // Iterates thru the selected survivor's bio and append each parapraph to a new page
        if let currentSurvivor = survivorName {
            for paragraph in survivorToBios[currentSurvivor]! {
                pageStrings.append(paragraph)
            }
            
            for image in survivorToImages[currentSurvivor]! {
                imageStrings.append(image)
            }
            
            for caption in survivorToCaptions[currentSurvivor]! {
                captionStrings.append(caption)
            }
        }
        
        //pageStrings.append("Renee1")
        //pageStrings.append("Renee2")
        
        pageContent = pageStrings as NSArray
        pageImages = imageStrings as NSArray
        pageCaptions = captionStrings as NSArray
    }
    
    func viewControllerAtIndex(_ index: Int) -> SurvivorViewController? {
        
        if (pageContent.count == 0) || (index >= pageContent.count) {
            return nil
        }
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let dataViewController = storyBoard.instantiateViewController(withIdentifier: "contentView") as! SurvivorViewController
        
        // dataViewController is the page where we have to insert the pageContent array which contains sentences. 
        // We need to make another pageContent array type and pass in images to another dataObject in the dataViewController which is of type SurvivorViewController
        dataViewController.dataObject = pageContent[index] as AnyObject?
        dataViewController.survivorName = survivorName
        dataViewController.imageObject = pageImages[index] as AnyObject?
        dataViewController.captionObject = pageCaptions[index] as AnyObject?
        dataViewController.pageCounter = index as AnyObject?
        
        return dataViewController
    }
    
    // data objects of adjacent pageContent bio paragraphs must be different or else this method fails to update the SurvivorViewController
    func indexOfViewController(_ viewController: SurvivorViewController) -> Int {
        if let dataObject: AnyObject = viewController.dataObject {
            return pageContent.index(of: dataObject)
        } else {
            return NSNotFound
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = indexOfViewController(viewController as! SurvivorViewController)
        
        if (index == 0) || (index == NSNotFound) {
            return nil
        }
        
        index -= 1
        return viewControllerAtIndex(index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        var index = indexOfViewController(viewController as! SurvivorViewController)
        
        if index == NSNotFound {
            return nil
        }
        
        index += 1
        if index == pageContent.count {
            return nil
        }
        
        return viewControllerAtIndex(index)
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
