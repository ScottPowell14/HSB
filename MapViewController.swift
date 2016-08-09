//
//  MapViewController.swift
//  hsbtabbed
//
//  Created by Scott Powell on 6/22/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UIScrollViewDelegate {
    // abandoned zooming and pinching for now. Some comments represent zooming attempts and should not be deleted.
    
    let locationsInfoDict = ["Rebecca Hauser":["Ioninna, Greece. Rebecca was born in Ioninna. At the age of twenty-two, all the Jews of the town were called to the marketplace and put on trucks for deportation.","Larissa, Greece. All the Jews of Ioninna and surrounding towns were taken to a holding point in Larissa. From here, they were forced into cramped, lice infested freight trains.","Auschwitz-Birkenau. Rebecca and the rest of her family were taken to Auschwitz. Over one million, including her parents, died in Auschwitz from gas chambers and starvation.","Bergen-Belsen. With Allied forces approaching Auschwitz in occupied Poland, the Nazis transferred Rebecca and others to Bergen-Belsen in Germany.","After the war, Rebecca lived briefly in Athens in 1946 supported by the National Council for Jewish Women, before leaving for America to live with an uncle."],
        
        "Hal Myers":["Karlsruhe, Germany. Hal was born in Karlsruhe, Germany where he witnessed Nazi looters destroy the synagogue next to his house in November 1938.","Camp de Gurs, Southern France. He was sent to Camp de Gurs in Southern France in 1940 where he endured hunger and wet and cold conditions.","Aspet, France. Rescued by a Quaker, Alice Resch, Hal lived in a childrens’ home there.","Madrid: Hal stayed in Madrid briefly on his way to the coast.","Lisbon, Port. Hal departs on the SS Serpa Pinta to the U.S. where he was taken in by the Myers family with his brother in October, 1941."],
        
        "Henry Landsberger":["Dresden, Germany. As the grandson of the last Chief Rabbi of the synagogue in Dresden, Henry was terrified to see the temple destroyed in 1938 during Kristallnacht.","Berlin. Henry’s mother took him to Berlin to send him on the Kindertransport to safety in Britain after his brother was deported to Buchenwald.","Hook Van Holland. Henry was taken to the coast at Hook Van Holland.","Harwich, England. Henry was taken near England’s coast to a summer camp in Harwich that was used as a camp for refugee Jewish children on the Kindertransport.","London. For most of 1939 and 1940, Henry lived in the London Hostel for Refugee Children. Finally in late 1940, Henry is taken in by a family in Lincoln."],
        
        "Robert Patton":["January 21st,1945. Lands in Le Havre, France.","March 30th. Crosses the Rhine in Oppenheim","April 22nd. Capures Neumarkt 27: Regensburg","May 6th. Mauthausen. Robert leaves his unit to go to Mauthausen the day after its liberation with the battalion commander and another officer.","May 9th. Meets Russian military in Erlauf."],
        
        "Jessie McIntyre":["Jessie arrived in Europe near Glasgow, Scotland after training in America on December 24, 1943.","Ellesmere, Wales. In Wales, she helped train new medics and was attached to her unit: the 131st evac unit.","Le Havre, France. In the summer of 1944, she lands in Le Havre, France.", "Becharbach, Germany. In early 1945, she treated her first casualties at Becharbach.","Mauthausen. In May 1945, Jessie begins caring for the liberated prisoners at Mauthausen who were starving and had contracted diseases such as Typhus and Tuberculosis."]
    ]
    
    var labelList : [UILabel] = []
    var numberOfLabelsActivated : Int = 0
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet var openMenuAgain: UIBarButtonItem!
    @IBOutlet var openMenu: UIBarButtonItem!
    @IBOutlet var survivorLabel: UILabel!
    var map : UIImageView! // = UIImageView()
    
    var viewNumber = Int()
    var sectionNumber = Int()
    
    var locButtonNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        openMenu.target = self.revealViewController()
        openMenu.action = Selector("revealToggle:")
        
        openMenuAgain.target = self.revealViewController()
        openMenuAgain.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        // scroll view and map image set up
        //map.image = UIImage(named: "KeyPointsMap")
        //map.frame = CGRect(x: 0, y: 0, width: 600, height: 600)
        
        let image = UIImage(named: "NewKeyPointsMap")!
        map = UIImageView(image: image)
        //map.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: image.size)
        map.frame = CGRect(x: 0, y: 0, width: 700, height: 680)
        map.userInteractionEnabled = true
        // 650 and 625 --- -60 and -100 above
        scrollView.contentSize = CGSize(width: 700, height: 680)
        scrollView.contentOffset = CGPoint(x: 100, y: 200)
        scrollView.addSubview(map)
        
        //scrollView.contentSize = image.size
        
        
        // zoom capability -- for now, not focusing on this.
        var doubleTapRecognizer = UITapGestureRecognizer(target: self, action: "scrollViewDoubleTapped:")
        doubleTapRecognizer.numberOfTapsRequired = 2
        doubleTapRecognizer.numberOfTouchesRequired = 1
        scrollView.addGestureRecognizer(doubleTapRecognizer)
        
        let scrollViewFrame = scrollView.frame
        let scaleWidth = scrollViewFrame.size.width / scrollView.contentSize.width
        let scaleHeight = scrollViewFrame.size.height / scrollView.contentSize.height
        // let minScale = min(scaleHeight, scaleWidth)

        scrollView.delegate = self
        scrollView.minimumZoomScale = 0.9
        scrollView.maximumZoomScale = 2.0
        scrollView.zoomScale = 1.0
        
        //scrollView.minimumZoomScale = minScale
        //scrollView.maximumZoomScale = 1.0
        //scrollView.zoomScale = minScale
        
        //centerScrollViewContents()
        
        
        
        // Use an if and switch statement to determine which table view cell is selected
        // make method to take in coordinates of pin then place buttons throughout
        if sectionNumber == 0 {
            
            switch viewNumber {
            case 0:
                survivorLabel.text = "Rebecca Hauser"
                //print("Rebecca")
                placeButtons(xCoordinates: [358, 374, 330, 243, 394], yCoordinates: [545, 543, 368, 316, 571], buttonMethodName: "pinButtonPressed:")
            case 1:
                survivorLabel.text = "Hal Myers"
                placeButtons(xCoordinates: [242 - 11, 132 - 11, 152 - 11, 87 - 11, 22 - 11], yCoordinates: [420 - 35, 493 - 35, 492 - 35, 540 - 35, 545 - 35], buttonMethodName: "pinButtonPressed:")
            case 2:
                survivorLabel.text = "Henry Landsberger"
                placeButtons(xCoordinates: [287 - 11, 290 - 11, 205 - 11, 178 - 11, 164 - 11], yCoordinates: [357 - 35, 381 - 35, 361 - 35, 351 - 35, 358 - 35], buttonMethodName: "pinButtonPressed:")
            case 3:
                survivorLabel.text = "Robert Patton"
                placeButtons(xCoordinates: [161 - 11, 243 - 11, 275 - 11, 295 - 11, 308 - 11], yCoordinates: [393 - 35, 400 - 35, 411 - 35, 432 - 35, 430 - 35], buttonMethodName: "pinButtonPressed:")
            case 4:
                survivorLabel.text = "Jessie McIntyre"
                placeButtons(xCoordinates: [145 - 11, 143 - 11, 161 - 11, 228 - 11, 295 - 11], yCoordinates: [275 - 35, 324 - 35, 393 - 35, 402 - 35, 432 - 35], buttonMethodName: "pinButtonPressed:")
            default:
                survivorLabel.text = "No survivor chosen"
            }
            
        } else {
            
            switch viewNumber {
            case 0:
                survivorLabel.text = "Birth Places"
                placeButtons(xCoordinates: [287 - 12, 290 - 12, 294 - 12, 243 - 12], yCoordinates: [356 - 33, 381 - 33, 400 - 33, 412 - 33], buttonMethodName: "pinLocButtonPressed:")
                
            case 1:
                survivorLabel.text = "Camps"
                placeButtons(xCoordinates: [295-11, 342 - 12, 132-11, 293 - 12, 243], yCoordinates: [432-35, 402 - 33, 493-35, 393 - 33, 316], buttonMethodName: "pinLocButtonPressed:")
            case 2:
                survivorLabel.text = "Influential Cities"
                placeButtons(xCoordinates: [266 - 12, 374, 162 - 12, 293 - 13], yCoordinates: [407 - 33, 543, 391 - 33, 388 - 33], buttonMethodName: "pinLocButtonPressed:")
            default:
                survivorLabel.text = "No location chosen"
            }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let segID = segue.identifier
        
        if segID == "mapLocSegue" {
            // next view controller is MapLocViewController
            let nextViewController = segue.destinationViewController as! MapLocViewController
            nextViewController.locGroup = survivorLabel.text!
            nextViewController.locNumber = locButtonNumber
        }
    }
    
    
    func placeButtons(xCoordinates xCoordinates: [Int], yCoordinates: [Int], buttonMethodName: Selector) {
        let numberOfPins = xCoordinates.count
        
        for pin in 0..<numberOfPins {
            let pinButton = UIButton(frame: CGRect(x: xCoordinates[pin], y: yCoordinates[pin], width: 25, height: 35))
            pinButton.setBackgroundImage(UIImage(named: "Pin" + "\(pin + 1)"), forState: .Normal)
            pinButton.addTarget(self, action: buttonMethodName, forControlEvents: UIControlEvents.TouchUpInside)
            pinButton.tag = pin
            map.addSubview(pinButton)
        }
    }
    
    func pinLocButtonPressed(sender: UIButton) {
        //print("Pin Location Button Pressed")
        //print(sender.tag)
        
        locButtonNumber = sender.tag
        
        self.performSegueWithIdentifier("mapLocSegue", sender: self)
    }
    
    
    func pinButtonPressed(sender:UIButton) {
        //print("Pin Button Pressed")
        //print(sender.tag)
        
        // get coordinates from sender button
        let xCoord = sender.frame.origin.x
        let yCoord = sender.frame.origin.y
        
        let textInfoArray = locationsInfoDict[survivorLabel.text!]
        let textInfo = textInfoArray![sender.tag]
        
        let locationLabel = UILabel(frame: CGRect(x: xCoord - 125 + 12, y: yCoord - 100, width: 250, height: 75))
        locationLabel.font = UIFont(name: "HelveticaNeueThin", size: 11)
        locationLabel.font = locationLabel.font.fontWithSize(11)
        locationLabel.numberOfLines = 4
        locationLabel.textAlignment = .Center
        locationLabel.text = textInfo
        locationLabel.textColor = UIColor.blackColor()
        locationLabel.backgroundColor = UIColor(red: 255/255, green: 250/255, blue: 240/255, alpha: 1.0)
        labelList.append(locationLabel)
        
        let labelButton = UIButton(frame: CGRect(x: xCoord - 125 + 12, y: yCoord - 100, width: 250, height: 75))
        labelButton.opaque = false
        labelButton.tag = numberOfLabelsActivated
        numberOfLabelsActivated += 1
        labelButton.addTarget(self, action: "tapLabel:", forControlEvents: UIControlEvents.TouchUpInside)
        
        // add tap gesture recognizer to turn label opacity to 0%
        //let tap = UITapGestureRecognizer(target: self, action: Selector("tapLabel:"))
        //locationLabel.addGestureRecognizer(tap)
        //locationLabel.userInteractionEnabled = true
        
        map.addSubview(locationLabel)
        map.addSubview(labelButton)
    }
    
    func tapLabel(sender:UIButton) {
        //print("Label tapped")
        
        let labelInQuestion : UILabel = labelList[sender.tag]
        //labelInQuestion.hidden = true
        labelInQuestion.removeFromSuperview()
        sender.removeFromSuperview()
    }
    
    func scrollViewDoubleTapped(recognizer: UITapGestureRecognizer) {
        //print("Double Tapped")
        
        // 1
        let pointInView = recognizer.locationInView(map)
        
        // 2
        var newZoomScale = scrollView.zoomScale * 1.5
        newZoomScale = min(newZoomScale, scrollView.maximumZoomScale)
        
        
        // 3
        let scrollViewSize = scrollView.bounds.size
        let w = scrollViewSize.width / newZoomScale
        let h = scrollViewSize.height / newZoomScale
        let x = pointInView.x - (w / 2.0)
        let y = pointInView.y - (h / 2.0)
        
        let rectToZoomTo = CGRectMake(x, y, w, h);
        
        // 4
        scrollView.zoomToRect(rectToZoomTo, animated: true)
    }
    
    func centerScrollViewContents() {
        let boundsSize = scrollView.bounds.size
        var contentsFrame = map.frame
        
        if contentsFrame.size.width < boundsSize.width {
            contentsFrame.origin.x = (boundsSize.width - contentsFrame.size.width) / 2.0
        } else {
            contentsFrame.origin.x = 0.0
        }
        
        if contentsFrame.size.height < boundsSize.height {
            contentsFrame.origin.y = (boundsSize.height - contentsFrame.size.height) / 2.0
        } else {
            contentsFrame.origin.y = 0.0
        }
        
        map.frame = contentsFrame
    }
    
    func scrollViewDidZoom(scrollView: UIScrollView) {
        //print("zoom Occured")
        centerScrollViewContents()
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return map
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
