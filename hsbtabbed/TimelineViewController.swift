//
//  TimelineViewController.swift
//  hsbtabbed
//
//  Created by Scott Powell on 7/8/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController, UIScrollViewDelegate {
    // timeline view controller for historical timeline
    @IBOutlet weak var scrollView: UIScrollView!
    // var timelineImageView: UIImageView!
    @IBOutlet weak var segControl: UISegmentedControl!
    
    @IBAction func segShift(sender: AnyObject, forEvent event: UIEvent) {
        //print("Shift")
        if segControl.selectedSegmentIndex != 0 {
            //print("To Survivor")
            performSegueWithIdentifier("SurvTimeSegue", sender: self)
        }
    }
    
    // transitionEvent corresponds to the button of the chosen event to segue
    var transitionEvent : String?
    
    let eventArray = ["Nuremberg", "Olympics", "Exhibition", "Kristallnacht", "Kindertransport", "Invasion", "GermanAttacks", "Krakow", "Chelmo", "Wannsee", "Warsaw", "Schindler", "Dauchau"]
    
    
    
    override func viewDidAppear(animated: Bool) {
        scrollView.flashScrollIndicators()
        
        // var screenHeight = self.view.frame.height
        
        // var bounds = UIScreen.mainScreen().bounds.height
        //var height = bounds.size.height
        
        //print((self.navigationController?.navigationBar.frame.height)!)
        //print(self.tabBarController?.tabBar.frame.height)
        // print(bounds)
        
        let trueScreenHeight = (Int(self.view.frame.height) / 2) - Int((self.navigationController?.navigationBar.frame.height)!)
    
        
        // let eventShiftY: Int = 20
        // let timelineY = trueScreenHeight + 50 // - 20   //250
        // var timelineX = 0
        // let eventBelowTimeShift = timelineY + eventShiftY + 36
        
        /*
        
        // 1st: 1935 - 1 event
        let timeline1935 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1935.image = UIImage(named: "timeline_1935")
        
        var midpoint = 190
        timelineX += 380
        
        // maybe do the network calls here? Let's test it out -- revert, going back to how it was before... Images are going to be loaded in-app. We'll see how it goes.
        let event1 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        let eventImage1 = UIImage(named: "Frank3")
        // var eventImage1 = UIImage()
        
        // updated
        print("Start network call")
        /* if let url = NSURL(string: "http://i.imgur.com/1d1qeeD.png") {
            if let data = NSData(contentsOfURL: url) {
                let imageFromOnline = UIImage(data: data)
                eventImage1 = imageFromOnline!
            }
        } */
        
        
        
        event1.setBackgroundImage(eventImage1, forState: .Normal)
        event1.addTarget(self, action: "eventOnePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event1)
        
        midpoint += 380
        timelineX += 380
        
        // event1936
        let event1936 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        let eventImage1936 = UIImage(named: "event2.png")
        /*var eventImage1936 = UIImage()
        // updated
        if let url = NSURL(string: "http://i.imgur.com/LPD5cZj.jpg") {
            if let data = NSData(contentsOfURL: url) {
                let imageFromOnline = UIImage(data: data)
                eventImage1936 = imageFromOnline!
            }
        } // left off here -- it takes a noticable amount of time to load pictures over network -- moving to ViewDidAppear method
        */
        
        event1936.setBackgroundImage(eventImage1936, forState: .Normal)
        
        let eventLabel1936 = UILabel(frame: CGRect(x: event1936.frame.origin.x, y: event1936.frame.origin.y + event1936.frame.height, width: event1936.frame.width, height: 50))
        eventLabel1936.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel1936.font = eventLabel1936.font.fontWithSize(25)
        eventLabel1936.textAlignment = .Center
        eventLabel1936.text = "The Berlin Olympics"
        
        event1936.addTarget(self, action: "eventTwoPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event1936)
        scrollView.addSubview(eventLabel1936)
        
        midpoint += 380
        timelineX += 380
        
        var eventImage2 = UIImage()
        // updated
        if let url = NSURL(string: "http://i.imgur.com/lGCHrxs.png") {
            if let data = NSData(contentsOfURL: url) {
                let imageFromOnline = UIImage(data: data)
                eventImage2 = imageFromOnline!
            }
        }
        
        let event2 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        //let eventImage2 = UIImage(named: "event3.png")
        event2.setBackgroundImage(eventImage2, forState: .Normal)
        
        let eventLabel2 = UILabel(frame: CGRect(x: event2.frame.origin.x, y: event2.frame.origin.y + event2.frame.height, width: event2.frame.width, height: 50))
        eventLabel2.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel2.font = eventLabel2.font.fontWithSize(25)
        eventLabel2.textAlignment = .Center
        eventLabel2.text = "Anti-Semitic Exhibiton"
        
        event2.addTarget(self, action: "eventThreePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event2)
        scrollView.addSubview(eventLabel2)
        
        midpoint += 380
        timelineX += 380
        
        // midpoint changed to half of new size
        let event3 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        //let eventImage3 = UIImage(named: "event4.png")
        var eventImage3 = UIImage()
        
        
        if let url = NSURL(string: "http://i.imgur.com/lGCHrxs.png") {
            if let data = NSData(contentsOfURL: url) {
                let imageFromOnline = UIImage(data: data)
                eventImage3 = imageFromOnline!
            }
        }
        
        event3.setBackgroundImage(eventImage3, forState: .Normal)
        
        let eventLabel3 = UILabel(frame: CGRect(x: event3.frame.origin.x, y: event3.frame.origin.y + event3.frame.height, width: event3.frame.width, height: 50))
        eventLabel3.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel3.font = eventLabel3.font.fontWithSize(25)
        eventLabel3.textAlignment = .Center
        eventLabel3.text = "Kristallnacht"
        
        event3.addTarget(self, action: "eventFourPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event3)
        scrollView.addSubview(eventLabel3)
        
        */
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //print("Hello")
        //print(segControl.selectedSegmentIndex)
        
        self.segControl.selectedSegmentIndex = 0
        
        // timeline image details and formatting
        //let image = UIImage(named: "color_timeline.png")!
        //timelineImageView = UIImageView(image: image)
        //timelineImageView.frame = CGRect(origin: CGPoint(x: 5, y: 260), size: CGSize(width: 684, height: image.size.height + 300))
        
        
        // Changing layout to only include events above timeline, but moving some events around so that we fill out the timeline more.
        
        // scroll view set up
        scrollView.frame = self.view.frame
        
        //var screenHeight = self.view.frame.height
        
        //var bounds = UIScreen.mainScreen().bounds.height
        //var height = bounds.size.height
        
        //print((self.navigationController?.navigationBar.frame.height)!)
        //print(self.tabBarController?.tabBar.frame.height)
        
        let trueScreenHeight = (Int(self.view.frame.height) / 2) - Int((self.navigationController?.navigationBar.frame.height)!)
        
        scrollView.contentSize = CGSize(width: 380 * 11, height: trueScreenHeight)
        scrollView.directionalLockEnabled = true
        //scrollView.addSubview(timelineImageView)
        //scrollView.backgroundColor = UIColor.lightGrayColor()
        
        
        // Event view set up and formatting
        // each "event" is a button with the image of the event and the name and date is on the actual timeline
        // find out how to get the width of the current screen size.
        
        let eventShiftY: Int = 20
        let timelineY = trueScreenHeight + 50 // - 20   //250
        var timelineX = 0
        // let eventBelowTimeShift = timelineY + eventShiftY + 36
        
        // 1st: 1935 - 1 event
        let timeline1935 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1935.image = UIImage(named: "timeline_1935")
        
        var midpoint = 190
        timelineX += 380
        
        
        // All of the historical timeline images are uploaded to imgur so now we need to fetch them
        // event1
        
        // So here's the rub: Apps can be put up that are over 100 MB, but must then be downloaded over WIFI... I think this is OK. Don't want the user experience of the app to go down for the sake of just trying to make it downloadable.
        
        // we're taking event 1 from here and moving it to the ViewDidAppear method so the network calls keep up with the UI
        let event1 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        let eventImage1 = UIImage(named: "Frank3")
        //var eventImage1 = UIImage()
        // updated
        /*print("Start network call")
        if let url = NSURL(string: "http://i.imgur.com/1d1qeeD.png") {
            if let data = NSData(contentsOfURL: url) {
                let imageFromOnline = UIImage(data: data)
                eventImage1 = imageFromOnline!
            }
        }*/
        
        event1.setBackgroundImage(eventImage1, forState: .Normal)
        
        let eventLabel1 = UILabel(frame: CGRect(x: event1.frame.origin.x, y: event1.frame.origin.y + event1.frame.height, width: event1.frame.width, height: 50))
        eventLabel1.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel1.font = eventLabel1.font.fontWithSize(25)
        eventLabel1.textAlignment = .Center
        eventLabel1.text = "Nuremberg Race Laws"
        
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
        let event1936 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        let eventImage1936 = UIImage(named: "event2.png")
        //var eventImage1936 = UIImage()
        /*// updated
        if let url = NSURL(string: "http://i.imgur.com/LPD5cZj.jpg") {
            if let data = NSData(contentsOfURL: url) {
                let imageFromOnline = UIImage(data: data)
                eventImage1936 = imageFromOnline!
            }
        }*/
        
        event1936.setBackgroundImage(eventImage1936, forState: .Normal)
        
        let eventLabel1936 = UILabel(frame: CGRect(x: event1936.frame.origin.x, y: event1936.frame.origin.y + event1936.frame.height, width: event1936.frame.width, height: 50))
        eventLabel1936.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel1936.font = eventLabel1936.font.fontWithSize(25)
        eventLabel1936.textAlignment = .Center
        eventLabel1936.text = "The Berlin Olympics"
        
        event1936.addTarget(self, action: "eventTwoPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event1936)
        scrollView.addSubview(eventLabel1936)
        
        scrollView.addSubview(timeline1936)
        
        // 3rd: 1937 - 1 event (inserted event1936 in so skips to event 2)
        let timeline1937 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1937.image = UIImage(named: "timeline_1937")
        
        midpoint += 380
        timelineX += 380
        
        
        /* var eventImage2 = UIImage()
        // updated
        if let url = NSURL(string: "http://i.imgur.com/lGCHrxs.png") {
            if let data = NSData(contentsOfURL: url) {
                let imageFromOnline = UIImage(data: data)
                eventImage2 = imageFromOnline!
            }
        } */
        
        let event2 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        let eventImage2 = UIImage(named: "event3.png")
        event2.setBackgroundImage(eventImage2, forState: .Normal)
        
        let eventLabel2 = UILabel(frame: CGRect(x: event2.frame.origin.x, y: event2.frame.origin.y + event2.frame.height, width: event2.frame.width, height: 50))
        eventLabel2.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel2.font = eventLabel2.font.fontWithSize(25)
        eventLabel2.textAlignment = .Center
        eventLabel2.text = "Anti-Semitic Exhibiton"
        
        event2.addTarget(self, action: "eventThreePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event2)
        scrollView.addSubview(eventLabel2)
        scrollView.addSubview(timeline1937)
        
        
        // 1938 - 2 events
        // Moved timeline and corresponding buttons and labels up 20 pts -- changed size of images from 300x200 to 270x180
        // left off here moving the buttons/image loading to the ViewDidAppear method. Should try to make the first event (nuremberg trials)
        // into the viewDidLoad with the rest in the viewDidAppear method.
        
        let timeline1938 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1938.image = UIImage(named: "timeline_1938")
        
        midpoint += 380
        timelineX += 380
        
        // midpoint changed to half of new size
        let event3 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        let eventImage3 = UIImage(named: "event4.png")
        /*var eventImage3 = UIImage()
        
        
        if let url = NSURL(string: "http://i.imgur.com/lGCHrxs.png") {
            if let data = NSData(contentsOfURL: url) {
                let imageFromOnline = UIImage(data: data)
                eventImage3 = imageFromOnline!
            }
        }*/
        
        event3.setBackgroundImage(eventImage3, forState: .Normal)
        
        let eventLabel3 = UILabel(frame: CGRect(x: event3.frame.origin.x, y: event3.frame.origin.y + event3.frame.height, width: event3.frame.width, height: 50))
        eventLabel3.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel3.font = eventLabel3.font.fontWithSize(25)
        eventLabel3.textAlignment = .Center
        eventLabel3.text = "Kristallnacht"
        
        event3.addTarget(self, action: "eventFourPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        // event 4 - 1938
        
        // Y-shift for events below the timeline: 250 + 36 + eventShiftY
        // let eventBelowTimeShift = timelineY + 36 + eventShiftY
        
        // let event4 = UIButton(frame: CGRect(x: midpoint - 135, y: eventBelowTimeShift, width: 270, height: 180))
        
        //let eventImage4 = UIImage(named: "event5.png")
        //let eventImageView1 = UIImageView(frame: CGRect(origin: CGPoint(x: 5, y: 5), size: CGSize(width: 260, height: 200)))
        //event4.setBackgroundImage(eventImage4, forState: .Normal)
        
        /*let eventLabel4 = UILabel(frame: CGRect(x: event4.frame.origin.x, y: event4.frame.origin.y + event4.frame.height, width: event4.frame.width, height: 50))
        eventLabel4.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel4.font = eventLabel1.font.fontWithSize(25)
        eventLabel4.textAlignment = .Center
        //eventLabel1.backgroundColor = UIColor.blueColor()
        eventLabel4.text = "First Kindertransport"*/
        
        //event4.addTarget(self, action: "eventFivePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        
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
        
        let event5 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        let eventImage5 = UIImage(named: "event6.png")
        event5.setBackgroundImage(eventImage5, forState: .Normal)
        
        let eventLabel5 = UILabel(frame: CGRect(x: event5.frame.origin.x, y: event5.frame.origin.y + event5.frame.height, width: event5.frame.width, height: 50))
        eventLabel5.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel5.font = eventLabel5.font.fontWithSize(25)
        eventLabel5.textAlignment = .Center
        eventLabel5.text = "Invasion of Poland"
        
        event5.addTarget(self, action: "eventSixPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event5)
        scrollView.addSubview(eventLabel5)
        scrollView.addSubview(timeline1939)
        
        // 1940 - 1 event
        
        let timeline1940 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1940.image = UIImage(named: "timeline_1940")
        
        midpoint += 380
        timelineX += 380
        
        let event6 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        let eventImage6 = UIImage(named: "event7.png")
        event6.setBackgroundImage(eventImage6, forState: .Normal)
        
        
        let eventLabel6 = UILabel(frame: CGRect(x: event6.frame.origin.x, y: event6.frame.origin.y + event6.frame.height, width: event6.frame.width, height: 50))
        eventLabel6.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel6.font = eventLabel6.font.fontWithSize(25)
        eventLabel6.textAlignment = .Center
        eventLabel6.text = "German attacks"
        
        event6.addTarget(self, action: "eventSevenPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event6)
        scrollView.addSubview(eventLabel6)
        scrollView.addSubview(timeline1940)
        
        // 1941 - 3 events (only going to include 2 events)
        
        let timeline1941 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1941.image = UIImage(named: "timeline_1941")
        
        midpoint += 380
        timelineX += 380
        
        let event7 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        let eventImage7 = UIImage(named: "event8.png")
        event7.setBackgroundImage(eventImage7, forState: .Normal)
        
        
        let eventLabel7 = UILabel(frame: CGRect(x: event7.frame.origin.x, y: event7.frame.origin.y + event7.frame.height, width: event7.frame.width, height: 50))
        eventLabel7.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel7.font = eventLabel7.font.fontWithSize(25)
        eventLabel7.textAlignment = .Center
        eventLabel7.text = "Krakow Ghetto"
        
        event7.addTarget(self, action: "eventEightPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        // event8 is in 1941
        //let event8 = UIButton(frame: CGRect(x: midpoint - 135, y: eventBelowTimeShift, width: 270, height: 180))
        
        let eventImage8 = UIImage(named: "event10.png")
        //event8.setBackgroundImage(eventImage8, forState: .Normal)
        
        //let eventLabel8 = UILabel(frame: CGRect(x: event8.frame.origin.x, y: event8.frame.origin.y + event8.frame.height, width: event8.frame.width, height: 50))
        //eventLabel8.font = UIFont(name: "HelveticaNeueThin", size: 25)
        //eventLabel8.font = eventLabel1.font.fontWithSize(25)
        //eventLabel8.textAlignment = .Center
        //eventLabel8.text = "Chelmo Operations"
        
        //event8.addTarget(self, action: "eventNinePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
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
        
        let event9 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        let eventImage9 = UIImage(named: "event11.png")
        event9.setBackgroundImage(eventImage9, forState: .Normal)
        
        
        let eventLabel9 = UILabel(frame: CGRect(x: event9.frame.origin.x, y: event9.frame.origin.y + event9.frame.height, width: event9.frame.width, height: 50))
        eventLabel9.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel9.font = eventLabel9.font.fontWithSize(25)
        eventLabel9.textAlignment = .Center
        eventLabel9.text = "Wannsee Conference"
        
        event9.addTarget(self, action: "eventTenPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event9)
        scrollView.addSubview(eventLabel9)
        scrollView.addSubview(timeline1942)
        
        // 1943 - 1 events
        
        let timeline1943 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1943.image = UIImage(named: "timeline_1943")
        
        midpoint += 380
        timelineX += 380
        
        let event10 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        let eventImage10 = UIImage(named: "event12.png")
        event10.setBackgroundImage(eventImage10, forState: .Normal)
        
        let eventLabel10 = UILabel(frame: CGRect(x: event10.frame.origin.x, y: event10.frame.origin.y + event10.frame.height, width: event10.frame.width, height: 50))
        eventLabel10.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel10.font = eventLabel10.font.fontWithSize(25)
        eventLabel10.textAlignment = .Center
        eventLabel10.text = "Warsaw Ghetto Uprising"
        
        event10.addTarget(self, action: "eventElevenPressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event10)
        scrollView.addSubview(eventLabel10)
        scrollView.addSubview(timeline1943)
        
        // 1944 - 1 event
        
        let timeline1944 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1944.image = UIImage(named: "timeline_1944")
        
        midpoint += 380
        timelineX += 380
        
        let event11 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        let eventImage11 = UIImage(named: "event13.png")
        event11.setBackgroundImage(eventImage11, forState: .Normal)
        
        
        let eventLabel11 = UILabel(frame: CGRect(x: event11.frame.origin.x, y: event11.frame.origin.y + event11.frame.height, width: event11.frame.width, height: 50))
        eventLabel11.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel11.font = eventLabel11.font.fontWithSize(25)
        eventLabel11.textAlignment = .Center
        eventLabel11.text = "Oskar Schindler"
        
        event11.addTarget(self, action: "eventTwelvePressed", forControlEvents: UIControlEvents.TouchUpInside)
        
        scrollView.addSubview(event11)
        scrollView.addSubview(eventLabel11)
        scrollView.addSubview(timeline1944)
        
        // 1945 - 1 event
        
        let timeline1945 = UIImageView(frame: CGRect(x: timelineX, y: timelineY, width: 380, height: 36))
        timeline1945.image = UIImage(named: "timeline_1945")
        
        midpoint += 380
        
        let event12 = UIButton(frame: CGRect(x: midpoint - 135, y: timelineY - 240, width: 270, height: 180))
        
        let eventImage12 = UIImage(named: "event14.png")
        event12.setBackgroundImage(eventImage12, forState: .Normal)
        
        
        let eventLabel12 = UILabel(frame: CGRect(x: event12.frame.origin.x, y: event12.frame.origin.y + event12.frame.height, width: event12.frame.width, height: 50))
        eventLabel12.font = UIFont(name: "HelveticaNeueThin", size: 25)
        eventLabel12.font = eventLabel12.font.fontWithSize(25)
        eventLabel12.textAlignment = .Center
        eventLabel12.text = "Liberation of Dauchau"
        
        event12.addTarget(self, action: "eventThirteenPressed", forControlEvents: UIControlEvents.TouchUpInside)
        //print("End network call")
        
        scrollView.addSubview(event12)
        scrollView.addSubview(eventLabel12)
        scrollView.addSubview(timeline1945)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let segID = segue.identifier
        
        if segID == "timelineSegue" {
            let nextViewController = segue.destinationViewController as! EventViewController
            nextViewController.event = transitionEvent!
        }
        
        if segID == "SurvTimeSegue" {
            let nextViewController = segue.destinationViewController as! SurvivorTimelineViewController
            nextViewController.segControl.selectedSegmentIndex = 1
            nextViewController.navigationItem.title = "Survivor"
            nextViewController.navigationItem.hidesBackButton = true
        }
    }
    
    
    func eventOnePressed() {
        //print("Button Pressed")
        transitionEvent = "Nuremberg"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventTwoPressed() {
        //print("Button Pressed")
        transitionEvent = "Olympics"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventThreePressed() {
        //print("Button Pressed")
        transitionEvent = "Exhibition"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventFourPressed() {
        //print("Button Pressed")
        transitionEvent = "Kristallnacht"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventFivePressed() {
        //print("Button Pressed")
        transitionEvent = "Kindertransport"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventSixPressed() {
        //print("Button Pressed")
        transitionEvent = "Invasion"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventSevenPressed() {
        //print("Button Pressed")
        transitionEvent = "GermanAttacks"
        self.performSegueWithIdentifier("timelineSegue", sender: self)
    }
    
    func eventEightPressed() {
        //print("Button Pressed")
        transitionEvent = "Krakow"
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
    
    func eventThirteenPressed() {
        //print("Button Pressed")
        transitionEvent = "Dauchau"
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
