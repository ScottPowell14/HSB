//
//  SurvivorTimelineViewController.swift
//  hsbtabbed
//
//  Created by Scott Powell on 8/9/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import UIKit

class SurvivorTimelineViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var segControl: UISegmentedControl!
    
    let eventArray = ["Marianne", "Marlene", "Frank", "Henry", "Peter", "Renee", "Esther", "Hal", "Rebecca", "Robert", "Jessie", "Albrecht"]
    
    var transitionEvent: String?
    
    @IBAction func segShift(sender: AnyObject, forEvent event: UIEvent) {
        //print("Shift")
        if segControl.selectedSegmentIndex != 1 {
            //print(" To Historical")
            performSegueWithIdentifier("HistTimeSegue", sender: self)
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        scrollView.flashScrollIndicators()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //print("Survivor Timeline View Controller active")
        
        // scroll view set up
        let trueScreenHeight = (Int(self.view.frame.height) / 2) - Int((self.navigationController?.navigationBar.frame.height)!)
        
        scrollView.frame = self.view.frame
        scrollView.contentSize = CGSize(width: 380 * 12, height: trueScreenHeight)
        scrollView.directionalLockEnabled = true
        
        // Event view set up and formatting
        
        let timelineY = trueScreenHeight + 50 //- 20
        let eventShiftY: Int = timelineY - 240
        var timelineX = 0
        let eventBelowTimeShift = timelineY + 56
        
        // 1st: 1935 - 1 event
        let timeline1935 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1935.image = UIImage(named: "timeline_1935")
        
        var midpoint = 190
        timelineX += 380
        
        // event1
        let event1 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        
        let eventImage1 = UIImage(named: "event1.png")
        event1.setBackgroundImage(eventImage1, forState: .Normal)
        
        let eventLabel1 = UILabel(frame: CGRect(x: event1.frame.origin.x, y: event1.frame.origin.y + event1.frame.height, width: event1.frame.width, height: 60))
        eventLabel1.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel1.font = eventLabel1.font.fontWithSize(22)
        eventLabel1.textAlignment = .Center
        eventLabel1.text = "Frank suffers under the Nuremberg Laws"
        eventLabel1.numberOfLines = 2
        
        event1.addTarget(self, action: "eventOnePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event1)
        scrollView.addSubview(eventLabel1)
        scrollView.addSubview(timeline1935)
        
        // 2nd: 1936 - 1 event
        let timeline1936 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1936.image = UIImage(named: "timeline_1936")
        
        midpoint += 380
        timelineX += 380
        
        // event1936
        let event1936 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        let eventImage1936 = UIImage(named: "MarianneEvent3")
        event1936.setBackgroundImage(eventImage1936, forState: .Normal)
        
        let eventLabel1936 = UILabel(frame: CGRect(x: event1936.frame.origin.x, y: event1936.frame.origin.y + event1936.frame.height, width: event1936.frame.width, height: 50))
        eventLabel1936.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel1936.font = eventLabel1.font.fontWithSize(25)
        eventLabel1936.textAlignment = .Center
        eventLabel1936.text = "Marianne orphaned"
        
        event1936.addTarget(self, action: "eventMariannePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event1936)
        scrollView.addSubview(eventLabel1936)
        scrollView.addSubview(timeline1936)
        
        // 3rd: 1937 - 1 event (inserted event1936 in so skips to event 2)
        let timeline1937 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1937.image = UIImage(named: "timeline_1937")
        
        midpoint += 380
        timelineX += 380
        
        let event2 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        
        let eventImage2 = UIImage(named: "event5.png")
        event2.setBackgroundImage(eventImage2, forState: .Normal)
        
        let eventLabel2 = UILabel(frame: CGRect(x: event2.frame.origin.x, y: event2.frame.origin.y + event2.frame.height, width: event2.frame.width, height: 50))
        eventLabel2.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel2.font = eventLabel1.font.fontWithSize(25)
        eventLabel2.textAlignment = .Center
        eventLabel2.text = "First Kindertransport"
        
        event2.addTarget(self, action: "eventFivePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event2)
        scrollView.addSubview(eventLabel2)
        scrollView.addSubview(timeline1937)
        
        
        // 1938 - 2 events
        // Moved timeline and corresponding buttons and labels up 20 pts -- changed size of images from 300x200 to 270x180
        
        
        let timeline1938 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1938.image = UIImage(named: "timeline_1938")
        
        midpoint += 380
        timelineX += 380
        
        // midpoint changed to half of new size
        let event3 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        
        let eventImage3 = UIImage(named: "MarleneEvent3")
        event3.setBackgroundImage(eventImage3, forState: .Normal)
        
        let eventLabel3 = UILabel(frame: CGRect(x: event3.frame.origin.x, y: event3.frame.origin.y + event3.frame.height, width: event3.frame.width, height: 50))
        eventLabel3.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel3.font = eventLabel1.font.fontWithSize(23)
        eventLabel3.textAlignment = .Center
        eventLabel3.text = "Marlene Appley flees"
        
        event3.addTarget(self, action: "eventMarlenePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        // event 4 - 1938
        
        // Y-shift for events below the timeline: 250 + 36 + eventShiftY
        // let eventBelowTimeShift = timelineY + 36 + eventShiftY
        
        /*let event4 = UIButton(frame: CGRect(x: midpoint - 135, y: eventBelowTimeShift, width: 270, height: 180))
        
        let eventImage4 = UIImage(named: "FrankEvent1")
        //let eventImageView1 = UIImageView(frame: CGRect(origin: CGPoint(x: 5, y: 5), size: CGSize(width: 260, height: 200)))
        event4.setBackgroundImage(eventImage4, forState: .Normal)
        
        let eventLabel4 = UILabel(frame: CGRect(x: event4.frame.origin.x, y: event4.frame.origin.y + event4.frame.height, width: event4.frame.width, height: 50))
        eventLabel4.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel4.font = eventLabel1.font.fontWithSize(25)
        eventLabel4.textAlignment = .Center
        //eventLabel1.backgroundColor = UIColor.blueColor()
        eventLabel4.text = "Frank Fischer sails away"
        
        event4.addTarget(self, action: "eventFrankPressed", forControlEvents: UIControlEvents.TouchUpInside) */
        
        
        scrollView.addSubview(event3)
        scrollView.addSubview(eventLabel3)
        //scrollView.addSubview(event4)
        //scrollView.addSubview(eventLabel4)
        scrollView.addSubview(timeline1938)
        
        // 1939 - 1 event
        
        let timeline1939 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1939.image = UIImage(named: "timeline_1939")
        
        midpoint += 380
        timelineX += 380
        
        let event5 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        
        let eventImage5 = UIImage(named: "HenryEvent1")
        event5.setBackgroundImage(eventImage5, forState: .Normal)
        
        let eventLabel5 = UILabel(frame: CGRect(x: event5.frame.origin.x, y: event5.frame.origin.y + event5.frame.height, width: event5.frame.width, height: 50))
        eventLabel5.font = UIFont(name: "HelveticaNeueThin", size: 20)
        eventLabel5.font = eventLabel1.font.fontWithSize(20)
        eventLabel5.textAlignment = .Center
        eventLabel5.numberOfLines = 2
        eventLabel5.text = "Henry on the Kindertransport"
        
        event5.addTarget(self, action: "eventHenryPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event5)
        scrollView.addSubview(eventLabel5)
        scrollView.addSubview(timeline1939)
        
        // 1939 - 2nd event
        let event5_2 = UIButton(frame: CGRect(x: midpoint - 135, y: eventBelowTimeShift, width: 270, height: 180))
        
        let eventImage5_2 = UIImage(named: "PeterEvent1")
        //let eventImageView1 = UIImageView(frame: CGRect(origin: CGPoint(x: 5, y: 5), size: CGSize(width: 260, height: 200)))
        event5_2.setBackgroundImage(eventImage5_2, forState: .Normal)
        
        let eventLabel5_2 = UILabel(frame: CGRect(x: event5_2.frame.origin.x, y: event5_2.frame.origin.y + event5_2.frame.height, width: event5_2.frame.width, height: 50))
        eventLabel5_2.font = UIFont(name: "HelveticaNeueThin", size: 20)
        eventLabel5_2.font = eventLabel1.font.fontWithSize(20)
        eventLabel5_2.textAlignment = .Center
        eventLabel5_2.numberOfLines = 2
        //eventLabel1.backgroundColor = UIColor.blueColor()
        eventLabel5_2.text = "Peter witnesses Nazi aggression"
        
        // change the method of this button
        event5_2.addTarget(self, action: "eventPeterPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        //scrollView.addSubview(event5_2)
        //scrollView.addSubview(eventLabel5_2)
        
        
        // 1940 - 2 survivor events
        
        let timeline1940 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1940.image = UIImage(named: "timeline_1940")
        
        midpoint += 380
        timelineX += 380
        
        let event6 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        
        let eventImage6 = UIImage(named: "ReneeEvent1")
        event6.setBackgroundImage(eventImage6, forState: .Normal)
        
        
        let eventLabel6 = UILabel(frame: CGRect(x: event6.frame.origin.x, y: event6.frame.origin.y + event6.frame.height, width: event6.frame.width, height: 50))
        eventLabel6.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel6.font = eventLabel1.font.fontWithSize(25)
        eventLabel6.textAlignment = .Center
        eventLabel6.text = "Renee in hiding"
        
        event6.addTarget(self, action: "eventReneePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event6)
        scrollView.addSubview(eventLabel6)
        scrollView.addSubview(timeline1940)
        
        // 1940 - 2nd event
        let event6_2 = UIButton(frame: CGRect(x: midpoint - 135, y: eventBelowTimeShift, width: 270, height: 180))
        
        let eventImage6_2 = UIImage(named: "EstherEvent1")
        //let eventImageView1 = UIImageView(frame: CGRect(origin: CGPoint(x: 5, y: 5), size: CGSize(width: 260, height: 200)))
        event6_2.setBackgroundImage(eventImage6_2, forState: .Normal)
        
        let eventLabel6_2 = UILabel(frame: CGRect(x: event6_2.frame.origin.x, y: event6_2.frame.origin.y + event6_2.frame.height, width: event6_2.frame.width, height: 50))
        eventLabel6_2.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel6_2.font = eventLabel1.font.fontWithSize(25)
        eventLabel6_2.textAlignment = .Center
        //eventLabel1.backgroundColor = UIColor.blueColor()
        eventLabel6_2.text = "Esther flees Lodz"
        
        // change the method of this button
        event6_2.addTarget(self, action: "eventEstherPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        //scrollView.addSubview(event6_2)
        //scrollView.addSubview(eventLabel6_2)
        
        
        // 1941 - 1 event
        
        let timeline1941 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1941.image = UIImage(named: "timeline_1941")
        
        midpoint += 380
        timelineX += 380
        
        let event7 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        
        let eventImage7 = UIImage(named: "HalEvent2")
        event7.setBackgroundImage(eventImage7, forState: .Normal)
        
        
        let eventLabel7 = UILabel(frame: CGRect(x: event7.frame.origin.x, y: event7.frame.origin.y + event7.frame.height, width: event7.frame.width, height: 50))
        eventLabel7.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel7.font = eventLabel1.font.fontWithSize(25)
        eventLabel7.textAlignment = .Center
        eventLabel7.text = "Hal deported to Gurs"
        
        event7.addTarget(self, action: "eventHalPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        // event8 is in 1941
        let event8 = UIButton(frame: CGRect(x: midpoint - 135, y: eventBelowTimeShift, width: 270, height: 180))
        
        let eventImage8 = UIImage(named: "event10.png")
        event8.setBackgroundImage(eventImage8, forState: .Normal)
        
        let eventLabel8 = UILabel(frame: CGRect(x: event8.frame.origin.x, y: event8.frame.origin.y + event8.frame.height, width: event8.frame.width, height: 50))
        eventLabel8.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel8.font = eventLabel1.font.fontWithSize(24)
        eventLabel8.textAlignment = .Center
        eventLabel8.text = "Chelmo Operations"
        
        event8.addTarget(self, action: "eventNinePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        //scrollView.addSubview(event8)
        //scrollView.addSubview(eventLabel8)
        scrollView.addSubview(event7)
        scrollView.addSubview(eventLabel7)
        scrollView.addSubview(timeline1941)
        
        // 1942 - 1 events
        
        let timeline1942 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1942.image = UIImage(named: "timeline_1942")
        
        midpoint += 380
        timelineX += 380
        
        let event9 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        
        let eventImage9 = UIImage(named: "PeterEvent1")
        event9.setBackgroundImage(eventImage9, forState: .Normal)
        
        
        let eventLabel9 = UILabel(frame: CGRect(x: event9.frame.origin.x, y: event9.frame.origin.y + event9.frame.height, width: event9.frame.width, height: 50))
        eventLabel9.font = UIFont(name: "HelveticaNeueThin", size: 20)
        eventLabel9.font = eventLabel1.font.fontWithSize(20)
        eventLabel9.textAlignment = .Center
        eventLabel9.text = "Peter witnesses Nazi aggression"
        eventLabel9.numberOfLines = 2
        
        event9.addTarget(self, action: "eventPeterPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event9)
        scrollView.addSubview(eventLabel9)
        scrollView.addSubview(timeline1942)
        
        // 1943 - 1 events
        
        let timeline1943 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1943.image = UIImage(named: "timeline_1943")
        
        midpoint += 380
        timelineX += 380
        
        let event10 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        
        let eventImage10 = UIImage(named: "event10.png")
        event10.setBackgroundImage(eventImage10, forState: .Normal)
        
        let eventLabel10 = UILabel(frame: CGRect(x: event10.frame.origin.x, y: event10.frame.origin.y + event10.frame.height, width: event10.frame.width, height: 50))
        eventLabel10.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel10.font = eventLabel1.font.fontWithSize(25)
        eventLabel10.textAlignment = .Center
        eventLabel10.text = "Chelmo Operations"
        
        event10.addTarget(self, action: "eventNinePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event10)
        scrollView.addSubview(eventLabel10)
        scrollView.addSubview(timeline1943)
        
        // 1944 - 1 event
        
        let timeline1944 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1944.image = UIImage(named: "timeline_1944")
        
        midpoint += 380
        timelineX += 380
        
        let event11 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        
        let eventImage11 = UIImage(named: "JessieEvent1")
        event11.setBackgroundImage(eventImage11, forState: .Normal)
        
        
        let eventLabel11 = UILabel(frame: CGRect(x: event11.frame.origin.x, y: event11.frame.origin.y + event11.frame.height, width: event11.frame.width, height: 50))
        eventLabel11.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel11.font = eventLabel1.font.fontWithSize(24)
        eventLabel11.textAlignment = .Center
        eventLabel11.text = "Jessie treats Prisoners"
        
        event11.addTarget(self, action: "eventJessiePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event11)
        scrollView.addSubview(eventLabel11)
        scrollView.addSubview(timeline1944)
        
        // 1945 - 2 events
        
        let timeline1945 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1945.image = UIImage(named: "timeline_1945")
        
        midpoint += 380
        timelineX += 380
        
        let event12 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        
        let eventImage12 = UIImage(named: "RebeccaEvent2")
        event12.setBackgroundImage(eventImage12, forState: .Normal)
        
        
        let eventLabel12 = UILabel(frame: CGRect(x: event12.frame.origin.x, y: event12.frame.origin.y + event12.frame.height, width: event12.frame.width, height: 50))
        eventLabel12.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel12.font = eventLabel1.font.fontWithSize(25)
        eventLabel12.textAlignment = .Center
        eventLabel12.text = "Rebecca is liberated"
        
        event12.addTarget(self, action: "eventRebeccaPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event12)
        scrollView.addSubview(eventLabel12)
        scrollView.addSubview(timeline1945)
        
        // 1945 - 2nd event
        /*let event12_2 = UIButton(frame: CGRect(x: midpoint - 135, y: eventBelowTimeShift, width: 270, height: 180))
        
        let eventImage12_2 = UIImage(named: "RobertEvent1")
        //let eventImageView1 = UIImageView(frame: CGRect(origin: CGPoint(x: 5, y: 5), size: CGSize(width: 260, height: 200)))
        event12_2.setBackgroundImage(eventImage12_2, forState: .Normal)
        
        let eventLabel12_2 = UILabel(frame: CGRect(x: event12_2.frame.origin.x, y: event12_2.frame.origin.y + event12_2.frame.height, width: event12_2.frame.width, height: 50))
        eventLabel12_2.font = UIFont(name: "HelveticaNeueThin", size: 20)
        eventLabel12_2.font = eventLabel1.font.fontWithSize(20)
        eventLabel12_2.textAlignment = .Center
        //eventLabel1.backgroundColor = UIColor.blueColor()
        eventLabel12_2.text = "Robert enters Mauthausen"
        
        // change the method of this button
        event12_2.addTarget(self, action: "eventRobertPressed", forControlEvents: UIControlEvents.TouchUpInside)*/
        
        //scrollView.addSubview(event12_2)
        //scrollView.addSubview(eventLabel12_2)
        
        
        // 1946 - 2 events
        
        let timeline1946 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1946.image = UIImage(named: "timeline_1946")
        
        midpoint += 380
        
        let event13 = UIButton(frame: CGRect(x: midpoint - 135, y: eventShiftY, width: 270, height: 180))
        
        let eventImage13 = UIImage(named: "AlbrechtEvent3")
        event13.setBackgroundImage(eventImage13, forState: .Normal)
        
        
        let eventLabel13 = UILabel(frame: CGRect(x: event13.frame.origin.x, y: event13.frame.origin.y + event13.frame.height, width: event13.frame.width, height: 50))
        eventLabel13.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel13.font = eventLabel1.font.fontWithSize(24)
        eventLabel13.textAlignment = .Center
        eventLabel13.text = "Albrecht after the war"
        
        // add new target
        event13.addTarget(self, action: "eventAlbrechtPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event13)
        scrollView.addSubview(eventLabel13)
        scrollView.addSubview(timeline1946)
        
        // 1946 - 2nd event
        let event13_2 = UIButton(frame: CGRect(x: midpoint - 135, y: eventBelowTimeShift, width: 270, height: 180))
        
        let eventImage13_2 = UIImage(named: "AlbrechtEvent3")
        event13_2.setBackgroundImage(eventImage13_2, forState: .Normal)
        
        let eventLabel13_2 = UILabel(frame: CGRect(x: event13_2.frame.origin.x, y: event13_2.frame.origin.y + event13_2.frame.height, width: event13_2.frame.width, height: 50))
        eventLabel13_2.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel13_2.font = eventLabel1.font.fontWithSize(24)
        eventLabel13_2.textAlignment = .Center
        //eventLabel1.backgroundColor = UIColor.blueColor()
        eventLabel13_2.text = "Albrecht after the war"
        
        // change the method of this button
        event13_2.addTarget(self, action: "eventAlbrechtPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        //scrollView.addSubview(event13_2)
        //scrollView.addSubview(eventLabel13_2)
        

        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let segID = segue.identifier
        
        if segID == "timelineSegue" {
            let nextViewController = segue.destinationViewController as! SurvivorEventViewController
            nextViewController.event = transitionEvent!
        }
        
        if segID == "HistTimeSegue" {
            let nextViewController = segue.destinationViewController as! TimelineViewController
            nextViewController.segControl.selectedSegmentIndex = 0
            nextViewController.navigationItem.hidesBackButton = true
        }
    }
    
    
    func eventOnePressed() {
        //print("Button Pressed")
        transitionEvent = "Frank"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventMariannePressed() {
        //print("Button Pressed")
        transitionEvent = "Marianne"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventThreePressed() {
        //print("Button Pressed")
        transitionEvent = "Exhibition"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventFivePressed() {
        //print("Button Pressed")
        transitionEvent = "Kindertransport"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventMarlenePressed() {
        //print("Button Pressed")
        transitionEvent = "Marlene"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventFrankPressed() {
        print("Button Pressed")
        transitionEvent = "Frank"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventHenryPressed() {
        //print("Button Pressed")
        transitionEvent = "Henry"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventPeterPressed() {
        //print("Button Pressed")
        transitionEvent = "Peter"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventReneePressed() {
        //print("Button Pressed")
        transitionEvent = "Renee"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventEstherPressed() {
        //print("Button Pressed")
        transitionEvent = "Esther"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventHalPressed() {
        //print("Button Pressed")
        transitionEvent = "Hal"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventNinePressed() {
        //print("Button Pressed")
        transitionEvent = "Chelmo"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventTenPressed() {
        //print("Button Pressed")
        transitionEvent = "Wannsee"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventElevenPressed() {
        //print("Button Pressed")
        transitionEvent = "Warsaw"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventTwelvePressed() {
        //print("Button Pressed")
        transitionEvent = "Schindler"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventRebeccaPressed() {
        //print("Button Pressed")
        transitionEvent = "Rebecca"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventRobertPressed() {
        //print("Button Pressed")
        transitionEvent = "Robert"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventJessiePressed() {
        //print("Button Pressed")
        transitionEvent = "Jessie"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventAlbrechtPressed() {
        //print("Button Pressed")
        transitionEvent = "Albrecht"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
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
