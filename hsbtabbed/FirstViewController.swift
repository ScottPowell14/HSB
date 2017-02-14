//
//  FirstViewController.swift
//  HSBTabbed
//
//  Created by Scott Powell on 3/9/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    // this is the view controller for the individual genocide information pages
    
    @IBOutlet weak var genoImage: UIImageView!
    @IBOutlet weak var genoText: UILabel!
    @IBOutlet weak var genoCaption: UILabel!
    
    let genocideNames = ["Bosnia", "Burma", "Cambodia", "Central African Republic", "Congo", "Rwanda", "South Sudan", "Syria"]
    
    let genoNamesToDescriptions = [
        
        "Bosnia" : "During the conflict in Bosnia between 1992 and 1995, an estimated 100,000 people were killed, 80 percent of whom were Bosnian Muslims—known as Bosniaks. It was the largest massacre in Europe since the Holocaust.",
        
        "Burma" : "Long considered one of the world’s most persecuted peoples, the Muslim Rohingya have no legal status in Burma and face severe discrimination, abuse, and escalating violence.",
        
        "Cambodia" : "Between 1975 and 1979, Cambodia’s Khmer Rouge subjected the country’s citizens to forced labor, persecution, and execution in the name of the regime’s ruthless agrarian ideology. Almost two million people—approximately one third of the country’s population—died in the “killing fields.”",
        
        "Central African Republic" : "What began in 2013 as political violence initiated by rebel groups opposing the government of the Central African Republic has taken on a religious dimension, and groups and individuals are now being targeted because of their Christian or Muslim identity.",
        
        "Congo" : "Over the last two decades, more than five million civilians have died in the Democratic Republic of the Congo in a succession of complex wars and conflicts. Most have died from causes such as a lack of food and health care.",
        
        "Rwanda" : "In just 100 days, from April to July 1994, between 500,000 and one million Rwandans, predominantly Tutsis, were massacred when a Hutu extremist–led government launched a plan to wipe out the country’s entire Tutsi minority and any others who opposed their policies.",
        
        "South Sudan" : "In July 2011, South Sudan became the world’s newest country after its citizens voted for independence from Sudan. The country faces great challenges as it seeks to build its democratic institutions, overcome a history of internal conflict based on ethnicity, and resolve ongoing tensions with Sudan.",
        
        "Syria" : "Since its outbreak in March 2011, the conflict in Syria has cost the lives of more than 200,000 Syrians, displaced millions more, and involved numerous atrocities and crimes against humanity."]
    
    let genoNamesToCaptions = [
        
        "Bosnia" : "This memorial in Srebenica commemorates the 8,000 men and boys massacred in July 1995",
        
        "Burma" : "Cut off from services and basic needs, the Muslim Rohingya are forced to live in squalor",
        
        "Cambodia" : "This Chankiri Tree or Killing Tree is infamous as children and infants were beat and killed here.",
        
        "Central African Republic" : "A soldier from Rwanda guards a refugee camp in the CAR.",
        
        "Congo" : "Before being rescued and demobilized, these children were forced to serve as child soldiers in the DRC.",
        
        "Rwanda" : "A display at the Genocide Memorial Church vowing to never forget the atrocities of the Rwandan genocide.",
        
        "South Sudan" : "In the civil war in South Sudan, many civilians armed themselves, and much inter-ethnic violence unsued.",
        
        "Syria" : "Millions of Syrian refugees have fled to refugee camps in neighboring countries and Europe such as this one."]
    
    var currentGenoName : String?
    var urlString : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //print("Hello")
        if let genName = currentGenoName {
            //print(genName)
            navigationItem.title = genName
            
            genoCaption.text = genoNamesToCaptions[genName]
            genoText.text = genoNamesToDescriptions[genName]
        }
        
        
        //print(UIDevice.currentDevice().model)
        if UIDevice.current.model == "iPad" {
            //print("Did it")
            genoImage.frame.size = CGSize(width: 500, height: 400)
        }
        
        
        let buttonLinkOut = UIBarButtonItem(title: "Learn More", style: .plain, target: self, action: #selector(FirstViewController.linkOut(_:)))
        navigationItem.rightBarButtonItem = buttonLinkOut
        
        
        //print("Starting network call")
        // network call is being made here, may need to find a way to amortize time costs,
        // if network connection is bad!
        
        // need a load image method (i.e. put this switch into a method) and have a message as the default image view. Every time the image is clicked then it calls the method to reload the image. 
        switch currentGenoName! {
            case "Bosnia":
                if let url = URL(string: "http://i.imgur.com/4Wy7178.png") {
                    //print("Tried")
                    if let data = try? Data(contentsOf: url) {
                        let imageFromOnline = UIImage(data: data)
                        genoImage.image = imageFromOnline
                        urlString = "http://www.ushmm.org/confront-genocide/cases/bosnia-herzegovina"
                    }
                }
            case "Burma":
                if let url = URL(string: "http://i.imgur.com/lUo7Gfo.png") {
                    if let data = try? Data(contentsOf: url) {
                        let imageFromOnline = UIImage(data: data)
                        genoImage.image = imageFromOnline
                        urlString = "http://www.ushmm.org/confront-genocide/cases/burma"
                    }
                }
            case "Cambodia":
                if let url = URL(string: "http://i.imgur.com/o68reVc.png") {
                    if let data = try? Data(contentsOf: url) {
                        let imageFromOnline = UIImage(data: data)
                        genoImage.image = imageFromOnline
                        urlString = "http://www.ushmm.org/confront-genocide/cases/cambodia/introduction/cambodia-1975"
                    }
                }
            case "Central African Republic":
                if let url = URL(string: "http://i.imgur.com/Q9LFHYU.png") {
                    if let data = try? Data(contentsOf: url) {
                        let imageFromOnline = UIImage(data: data)
                        genoImage.image = imageFromOnline
                        urlString = "http://www.ushmm.org/confront-genocide/cases/central-african-republic"
                    }
                }
            case "Congo":
                if let url = URL(string: "http://i.imgur.com/5ijxFk8.png") {
                    if let data = try? Data(contentsOf: url) {
                        let imageFromOnline = UIImage(data: data)
                        genoImage.image = imageFromOnline
                        urlString = "http://www.ushmm.org/confront-genocide/cases/dr-congo"
                        
                    }
                }
            case "Rwanda":
                if let url = URL(string: "http://i.imgur.com/RLZUa8q.png") {
                    if let data = try? Data(contentsOf: url) {
                        let imageFromOnline = UIImage(data: data)
                        genoImage.image = imageFromOnline
                        urlString = "http://www.ushmm.org/confront-genocide/cases/rwanda"
                    }
                }
            case "South Sudan":
                if let url = URL(string: "http://i.imgur.com/Gnd2PNH.png") {
                    if let data = try? Data(contentsOf: url) {
                        let imageFromOnline = UIImage(data: data)
                        genoImage.image = imageFromOnline
                        urlString = "http://www.ushmm.org/confront-genocide/cases/south-sudan"
                    }
                }
            case "Syria":
                if let url = URL(string: "http://i.imgur.com/nP6P9Gl.png") {
                    if let data = try? Data(contentsOf: url) {
                        let imageFromOnline = UIImage(data: data)
                        genoImage.image = imageFromOnline
                        urlString = "http://www.ushmm.org/confront-genocide/cases/syria"
                    }
                }
            default:
                genoText.text = "Picture not found"
            }
        
    }
    
    func linkOut(_ sender: UIBarButtonItem) {
        //print("Link out")
        if let urlFinString = urlString {
            if let url = URL(string: urlFinString) {
                UIApplication.shared.openURL(url)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}

