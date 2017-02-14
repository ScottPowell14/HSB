//
//  SurvivorEventViewController.swift
//  hsbtabbed
//
//  Created by Scott Powell on 8/9/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import UIKit

class SurvivorEventViewController: UIViewController {

    var event : String?

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    // Survivor Timeline data
    let eventArray = ["Marianne", "Marlene", "Frank", "Henry", "Peter", "Renee", "Esther", "Hal", "Rebecca", "Robert", "Jessie", "Albrecht"]
    
    let eventImages = ["Marianne": ["MarianneEvent1", "MarianneEvent2", "MarianneEvent3"], "Marlene": ["MarleneEvent1", "MarleneEvent2", "MarleneEvent3"], "Frank1" : ["FrankEvent1", "FrankEvent2"], "Henry": ["HenryEvent1", "HenryEvent2", "HenryEvent3"], "Peter": ["PeterEvent1", "PeterEvent2", "PeterEvent3"], "Renee": ["ReneeEvent1", "ReneeEvent2"], "Esther": ["EstherEvent1", "EstherEvent2", "EstherEvent3", "EstherEvent4"], "Hal":["HalEvent1", "HalEvent2", "HalEvent3"], "Rebecca":["RebeccaEvent1", "RebeccaEvent2", "RebeccaEvent3"], "Robert":["RobertEvent1"], "Jessie":["JessieEvent1", "JessieEvent2"], "Albrecht":["AlbrechtEvent2", "AlbrechtEvent3"], "Chelmo":["event10.png"], "Kindertransport":["event5.png"], "Frank":["FrankEvent2"]]
    
    // let eventImageURL = []
    
    let eventCaptions = ["Marianne": ["Dr. Bruno Beger was a Nazi anthropologist who obsessed over the idea that Germans were genetically superior.",
        
        "The Nazis were so obsessed with racial theory that they had A Racial Hygiene and Demographic Biology Research Unit. Here, a woman from that unit measures the skull of a Romani woman.",
        
        "This is the photo of Marianne’s left ear"], "Marlene": ["Marlene with her 8th grade class in Prague. She’s the girl in the far back left corner.",
            
        "This is an aerial view of her hometown, Teplice. She thought it was a paradise before the arrival of the Nazis.",
            
        "These Czech soldiers stand ready to protect the Sudetenland. In September, 1938. Unfortunately, the Sudetenland, and later the rest of Czechoslovakia, would be given to Hitler without a fight. The leaders of Britain and France tried to “appease” Hitler by giving him the Sudetenland. This diplomacy of appeasement only encouraged Hitler."],
        
        "Frank1" : ["The SS Manhattan.",
            
            "Tenement apartment. There are seven people staying in one or two rooms."],
        
        "Frank" : ["Frank's family living in overcrowded living conditions."],
        
        "Henry": ["This picture depicts Jewish refugee children at the port of London in 1940.",
            
            "Kindertransport Memorial at Liverpool St. Station",
            
            "Memorial to Kindertransport survivors from Gdansk."],
        
        "Peter": ["Reinhard Heydrich, the Nazi overseer of conquered Czechoslovakia, in the Prague Castle.",
            
            "The Czech government-in-exile assassinated the Nazi ruler of Bohemia and Moravia, Reinhard Heydrich. This is a picture of his open-top Mercedes after the successful operation. ",
            
            "This map details the partition of Czechoslovakia. In September 1938, Hitler annexed the Sudetenland (purple). Defenseless, the Protectorate of Bohemia and Moravia surrendered in March 1939. The other portions eventually fell under Nazi control."],
        
        "Renee": ["Members of the Dutch Resistance in Eindhoven brief Allied troops in September, 1944.",
            
            "This plaque commemorates Dutch resistance members executed by the Germans at the camp at Sachsenhausen."],
        
        "Esther": ["This depicts Jewish Children inside the crowded Lodz ghetto,1940.",
            
            "This is a map of the Lodz ghetto. Blue is the walled off area. Green is the Jewish cemetery.",
            
            "Jews moving belongings to the ghetto, March 1940. They could only pack what they could carry on short notice.",
            
            "Children en route for deportation to Chelmno death camp, 1942."],
        
        "Hal":["The Palace in Karlsruhe is the center of the city, which had been home to Jewish families since 1717.",
            
            "The old Karlsruhe Synagogue stood from 1798 until 1871.",
            
            "A memorial erected at Camp de Gurs commemorating those interned there, including 31,360 “Juifs”, or Jews, and 120 French resistance fighters."],
        
        "Chelmo":["This was the first stationary facility that used poisonous gas for the murder of Jews.", " "],
        
        "Kindertransport":["The first group of 200 children who arrived in Harwich, Great Britain."],
        
        "Rebecca":["These tables were used to clean and delouse the prisoners after liberation.",
            
            "A crowd watches the burning of the last hut in Bergen-Belsen after evacuation.",
            
            "A sign put up by the British warning of the typhus epidemic."],
        
        "Robert":["This is a picture of an SS guard from Mauthausen."],
        
        "Jessie":["Shortly after liberation, emaciated survivors of neighboring camp Gusen enjoy life saving food.",
            
            "These are temporary papers produced for a former prisoner after liberation."],
        
        "Albrecht":["Albrecht's family had lived in Germany for decades before being forced to flee after Hitler’s rise.",
            
            "Albrecht at the Palace of Versailles In December 1945. The Treaty of Versailles was signed here and some scholars blame it for the rise of Nazi-ism.",
            
            "After the war, Albrecht visited his ancestors’ graves in Marburg, Germany. His family had lived in Germany for decades before being forced to flee after Hitler’s rise.",
    
            " "]]
    
    let eventBios = ["Marianne" : "When Marianne’s mother died, she and her sister were newly orphaned. German officials called the two to City Hall where they expressed none of the comfort deserving of two orphaned girls. Instead, they were told that Jews had different left ears than Germans, and took a photograph of Marianne’s ear for documentation. They also changed her name to Sarah, stripping her of her identity. Now, orphaned and robbed of her dignity, Marianne and her sister lived scared in Ludwigshafen, often harassed by the Nazi police. Eventually, a neighbor hid them in 1938 until their escape to America. ",
        
                    "Marlene":"Marlene Appley was born and lived her early years in Teplice, a town in the Sudetenland. When British and French ministers allowed Hitler to take the Sudetenland in September 1938, the Appley family knew they had to flee. One day that month, Marlene’s mother instructed her to pack a small suitcase with only her most cherished possessions. Then, the family snuck in small groups to the train station. From there, they went inland to the capital, Prague. Prague, which was not part of the Sudetenland, was still part of independent Czechoslovakia and offered temporary safety.  There, life continued as normal, and Marlene entered into the eighth grade. Then, in March 1939, Hitler assumed control of the rest of Czechoslovakia. Prague was no longer safe, and the Appley family fled to Holland, and then America.",
        
        
                    "Frank1":"Frank Fischer had grown up in Oppeln, Germany. His father left the anti-Semitic environment in 1938 to live with a cousin in the American south. After facing increasing harassment from the Nazis, Frank, his mother, and his sister took their chances and left on the SS Manhattan for New York City. He lived in the tenements there and adjusted to the harsh realities of his new home including attending school knowing little English, seeing his parents work menial jobs, and missing friends and family still in Europe.",
        
                    "Frank":"The Nuremberg Laws, enacted in 1935, revoked citizenship and civil rights for Jews living in Nazi Germany. Jews were no longer permitted to receive an education in public schools or work in civil service and other government regulated professions. Jews were forbidden to interact with or marry non-Jews. Frank's father, a physician, was forced to emigrate to the United States in 1938 due to life in Germany becoming more restrictive and unbearable for Jews.",
        
        
                    "Henry":"After witnessing the horrors of Kristallnacht in November 1938, Henry saw his father deported to Buchenwald. Horrified at the prospect of raising her children in Nazi Germany, Henry’s mother sent Henry on the Kindertransport to England in January 1939 before his father returned from Buchenwald. He would not see his father or mother again until 1949. The Kindertransport took place in the nine months prior to the outbreak of World War II, and saw the escape of about 10,000 Jewish youth to England from Central Europe. They lived in English hostels and private homes throughout the war. Most of the ferries to England left from the Netherlands, as the Germans decreed that no Kindertransport ship could block a German port. Many of these children would be the only member of their family to survive the Holocaust.",
        
                    
                    "Peter":"On September 30, 1938, Hitler annexed the Sudetenland of Czechoslovakia, an area where many ethnic Germans lived. The rest of Czechoslovakia (later called Bohemia and Moravia) fell quickly in March 1939 when the President was strong-armed by Hitler into surrendering his country to Germany. Hitler spent the first night of the conquest on March 15 in Prague Castle, which had for years housed the leader of the region, including Czech presidents. The next day, Hitler proclaimed to all of Prague that their homeland was no longer a country but a “protectorate” of Germany. When Hitler’s acting governor, Reinhard Heydrich, of the region was assassinated in 1942, the Nazis responded by destroying and murdering or interning the whole village of Lidice and Lezaky. The Stein family watched with some apprehension, but ultimately remained unworried. After all, the Steins and their ancestors had lived in Germany and Czechoslovakia for generations, and believed they were safe among their neighbors. They were not. Peter’s father was sent to a camp at Terezin and survived; however, all his cousins on that side would be murdered by the Nazis. Peter himself was only half-Jewish as his mother was Christian. Despite this, he still faced anti-Semitism throughout his school years and was forced to salute the Nazi flag in class.",
        
        
                    "Renee":"After gradually witnessing the Jewish people of Holland lose all their freedoms, Renee, at the age of four, was sent into hiding with the Dutch underground. The Dutch underground, whose members participated under threat of death, resisted the Nazi in all manners including hiding Jewish children, supporting Allied forces, printing anti-Nazi papers, and sabotaging Nazi infrastructure. This underground arranged to transport Renee to two different safe houses throughout the war, providing shelter and safe transportation.",
        
        
                    "Esther":"Throughout Poland, the Nazis instituted ghettos with a few goals. Foremost, they wanted to isolate the corrupting Jewish influence from the rest of society. Also, they wanted to collect all the Jews in one area so that it would be easier to eventually carry out a solution to the “Jewish Problem.” Lodz had a large Jewish population of about 230,000 that was packed into the small area of the ghetto. There was an average of 3.5 Jews living in every room of the ghetto. On May 1, 1940, the ghetto was sealed from outside interaction. Sometime between February and May of 1940, Esther and her family fled Lodz to avoid the ghetto for the small town of Chmielnik.",
        
                    "Kindertransport" : "Many Jewish groups in Germany and Austria set up rescue efforts to send their children on “kindertransport” (children’s transport) to safety from Nazi persecution. Thousands of children arrived in Great Britain as refugees beginning in late 1937 and continued through 1940. Close to 10,000 children were saved by kindertransport but most never saw their parents and families again. Henry Landsberger was one of the children sent on the Kindertransport.",
        
        
                    "Hal":"Hal Myers was born in Karlsruhe, Germany. In the early years of the Nazi regime, the Nazi leadership prepared to kick out the Jews from Karlsruhe. On October 22, 1938, all older male Jews in Karlsruhe, including Hal’s dad, were deported to Dachau and only allowed to return home once they had sworn they would soon emigrate from Germany. Hal was deported to an internment camp in southern France where the conditions were deplorable; he witnessed about 14 deaths each day. Eventually, Quakers would rescue Hal and he would come to America.",
        
        
                    "Rebecca":"Rebecca Hauser, after traveling over 1500 miles from her hometown to various camps throughout Europe, was liberated from Bergen-Belsen on April 15, 1945 by British forces. Upon liberation, British forces found about 60,000 prisoners still alive, though starved and sick. They also found 13,000 unburied corpses. In the days after liberation, almost 500 prisoners would die each day from typhus. Due to the rich documentation by the British liberators, the name “Belsen” would become the most notorious symbol of Nazi cruelty for many. Ultimately, the camp was burned down shortly after to control the typhus and loose epidemics.",
        
        
                    "Robert":"After crossing France, Germany, and Austria Robert Patton entered Mauthausen the day after its liberation. Although he was not part of the American 11th Armored Division that liberated the camp, he and his commanding officer went to report on the camp the following day. He recounts the horrors he saw there that have inspired him to fight for Holocaust commemoration throughout his adult life. The Mauthausen camp was somewhat unique in that it mainly served as an extermination through labor for the higher class prisoners: educated peoples and political enemies. On May 3, the SS Nazi guards left the camp, and American forces liberated the camp without a fight on May 5.",
        
        
                    "Jessie":"After Allied troops liberated Mauthausen, Jessie McIntyre’s unit was tasked with caring for the over 6,000 starving prisoners. She describes how futile efforts were to save some of most sick and malnourished prisoners. In the first week, Jessie administered 2,000 X-rays, and every single patient came back positive for tuberculosis. Even after her unit was sent home, Jessie stayed at the camp until October to help care for the displaced. One aspect of this care was issuing temporary identity papers to former prisoners, and attempting to facilitate their re-entry to civilization. After all, these prisoners had lost their homes, family and any livelihood they had.",
        
                    "Chelmo" : "About 30 miles north west of Lodz, killing operations begin at the ‘Chelmo Killing Center’. This center was established by the SS and various police authorities in order to annihilate the Jewish population in an area of western Poland called ‘Wartheland’. Before this facility, Jews were kept at a synagogue in a town nearby Chelmo until they could be taken into gas vans to be killed, then later transported to be cremated. The Chelmo Killing Center operated from December 8, 1941 until March 1943 and then shortly in the summer of 1944.",
        
        
                    "Albrecht":"Albrecht Strauss experienced a most unique life as an early escapee from Nazi Germany, American army man, counterintelligence officer, and later a prison administrator for Nazi war crimes perpetrators. After the war, Albrecht worked as a prison official in Ludwigsberg, Germany that housed SS officials. The SS, short for Schutzstaffel, was a paramilitary organization that grew to be one of the most powerful groups in Nazi Germany. The SS participated in all parts of the Nazi war machine, from front-line combat to concentration camp over watch. One branch, the Einsatzgruppe, acted as death squads that followed the German army to murder Jews, Gypsies, political opponents and others. Many SS would later be prosecuted in war crimes. In addition to administering the prison, Albrecht Strauss spent his time in Germany and Europe visiting many sites of both historical and personal importance. He visited Hitler and other Nazi leaders’ homes, the palace at Versailles in France, as well as his parents graves."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //var label = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        //label.text = event!
        //view.addSubview(label)
        
        
        navigationItem.title = event!
        
        
        if let bio = eventBios[event!] {
            self.textView.text = bio
            self.textView.font = UIFont.systemFont(ofSize: 17)
        }
        
        self.textView.scrollRangeToVisible(NSMakeRange(0, 0))
        self.textView.showsVerticalScrollIndicator = true
        
        self.captionLabel.text = eventCaptions[event!]![0]
        self.imgView.image = UIImage(named: eventImages[event!]![0])
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        textView.flashScrollIndicators()
    }
    
    // methods for collection view superclass
    /* func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let imageArray = eventImages[event!] {
            print("Count is \(imageArray.count)")
            return imageArray.count
        }
        return 0
    } */
    
    /* func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! myViewCell
        
        
        if let imageArray = eventImages[event!] {
            
            print(imageArray[indexPath.row])
            cell.imgView.image = UIImage(named: imageArray[indexPath.row])
        }

        if let captionArray = eventCaptions[event!] {
            cell.titleLabel.text = captionArray[indexPath.row]
        }
        
        //cell.backgroundColor = UIColor.grayColor()
        
        //cell.timelineImgView.image = UIImage(named: "historical_timeline.png")
        
        return cell
    } */
    

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
