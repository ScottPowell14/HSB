//
//  EventViewController.swift
//  hsbtabbed
//
//  Created by Scott Powell on 7/25/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {

    // maybe put a button/tab for sources cited...
    
    var event : String?
    // This section contains the data for each survivor
    let eventArray = ["Nuremberg", "Olympics", "Exhibition", "Kristallnacht", "Kindertransport", "Invasion", "GermanAttacks", "Krakow", "Chelmo", "Wannsee", "Warsaw", "Schindler", "Dauchau"]
    
    let eventImages = ["Nuremberg": "event1", "Olympics":"event2.png", "Exhibition":"event3.png", "Kristallnacht":"event4.png", "Kindertransport":"event5.png", "Invasion":"event6.png", "GermanAttacks":"event7.png", "Krakow":"event8.png", "Chelmo":"event10.png", "Wannsee":"event11.png", "Warsaw":"event12.png", "Schindler":"event13.png", "Dauchau":"event14.png"]
    
    let eventDate = ["Nuremberg":"September 15, 1935", "Olympics":"August, 1936", "Exhibition":"November 8, 1937", "Kristallnacht":"November 8, 1938", "Kindertransport":"December 2, 1938", "Invasion":"September 1, 1939", "GermanAttacks":"May 10, 1940", "Krakow":"March 3, 1941", "Chelmo":"December 8, 1941", "Wannsee":"January 20, 1942", "Warsaw":"April 19, 1943", "Schindler":"Late 1944", "Dauchau":"April 29, 1945"]
    
    let eventCaptions = ["Nuremberg": "Two young Jewish boys wear the Star of David as an identifier.",
        
        "Olympics":"Hitler and his second in command, Hermann Goring, at the 1936 Olympics.",
        
        "Exhibition":"The exhibit featured stereotypical degrading illustrations of Jews.",
        
        "Kristallnacht":"Synagogue of Siegen, Germany, burning during Kristallnacht in Nazi Germany.",
        
        "Kindertransport":"The first group of 200 children who arrived in Harwich, Great Britain.",
        
        "Invasion":"A Polish market reduced to rubble following a German aerial attack.",
        
        "GermanAttacks":"The Nazis storm Paris.",
        
        "Krakow":"Jews, working under forced labor, building the Krakow ghetto in the winter of 1941.",
        
        "Chelmo":"This was the first stationary facility that used poisonous gas for the murder of Jews.",
        
        "Wannsee":"The villa where the Wannsee Conference was held.",
        
        "Warsaw":"This famous WWII picture is from a German report on the Warsaw Ghetto Uprising.",
        
        "Schindler":"He single-handedly saved over 1,000 Jews from death in Nazis camps.",
        
        "Dauchau":"Former prisoners of Dachau cheer as the American flag is raised over the camp."]
    
    let eventBios =
    
    ["Nuremberg" : "At the annual party rally held in Nuremberg in 1935, the Nazis announced new laws which institutionalized many of the racial theories prevalent in Nazi ideology. The laws excluded German Jews from Reich citizenship and prohibited them from marrying or having sexual relations with persons of German or related blood. Ancillary ordinances to the laws disenfranchised Jews and deprived them of most political rights. The Nuremberg Laws, as they became known, did not define a Jew as someone with particular religious beliefs. Instead, anyone who had three or four Jewish grandparents was defined as a Jew. Jewish doctors were forbidden to treat non-Jews, and Jewish lawyers were not permitted to practice law. Like everyone in Germany, Jews were required to carry identity cards, but the government added special identifying marks to theirs: a red J stamped on them and new middle names for all those Jews who did not possess recognizably Jewish first names — Israel for males, Sara for females. Such cards allowed the police to identify Jews easily.",
        
        "Olympics" : "For two weeks in August 1936, Adolf Hitler's Nazi dictatorship camouflaged its racist, militaristic character while hosting the Summer Olympics. Softpedaling its antisemitic agenda and plans for territorial expansion, the regime exploited the Games to bedazzle many foreign spectators and journalists with an image of a peaceful, tolerant Germany. Racist posters were removed from German cities, and antisemitic newspapers were told to hold printing any offensive articles. With the conclusion of the Games, Germany's expansionist policies and the persecution of Jews and other enemies of the state accelerated, culminating in World War II and the Holocaust. The Nazi claim to control all aspects of German life also extended to sports. German sports imagery of the 1930s served to promote the myth of “Aryan” racial superiority and physical prowess. In sculpture and in other forms, German artists idealized athletes' well-developed muscle tone and heroic strength and accentuated ostensibly Aryan facial features. Non-Aryans—Jewish or part-Jewish and Romani (Gypsy) athletes were systematically excluded from German sports facilities and associations. Still, nine Jewish athletes won medals in the Nazi Olympics. Although Hitler intended for the Olympics to showcase Aryan superiority, African-American runner Jesse Owens was the star of the event when he won four gold medals in the 1936 Olympics.",
        
        "Exhibition" : "Reich propaganda minister, Josef Goebbels, and the editor of the renowned anti-Semitic newspaper (Der Stürmer), Julius Streicher, opened an Anti-Semitic exhibit in the German museum of Munich called Der Ewige Jude, which translates to “the eternal Jew”. Over 400,000 people attended this traveling exhibit in Munich, Berlin, Vienna, and other highly populated German cities. Many Nazi officials attended the exhibition as well.",
        
        "Kristallnacht" : "Kristallnacht, literally, Night of Crystal, is often referred to as the Night of Broken Glass. The name refers to the wave of violent anti-Jewish pogroms which took place on November 9 and 10, 1938, throughout Germany, annexed Austria, and in areas of the Sudetenland in Czechoslovakia recently occupied by German troops. Instigated primarily by Nazi Party officials and members of the SA (Sturmabteilungen: literally Assault Detachments, but commonly known as Storm Troopers) and Hitler Youth, Kristallnacht owes its name to the shards of shattered glass that lined German streets in the wake of the pogrom—broken glass from the windows of synagogues, homes, and Jewish-owned businesses plundered and destroyed during the violence. The rioters destroyed 267 synagogues throughout Germany, Austria, and the Sudetenland. Many synagogues burned throughout the night, in full view of the public and of local firefighters, who had received orders to intervene only to prevent flames from spreading to nearby buildings. SA and Hitler Youth members across the country shattered the shop windows of an estimated 7,500 Jewish-owned commercial establishments, and looted their wares. Jewish cemeteries became a particular object of desecration in many regions.",
        
        
        "Kindertransport" : "Many Jewish groups in Germany and Austria set up rescue efforts to send their children on “kindertransport” (children’s transport) to safety from Nazi persecution. Thousands of unaccompanied children arrived in Great Britain as refugees beginning in 1937 and continued through 1940. Close to 10,000 children were saved by kindertransport but most never saw their parents and families again.",
        
        "Invasion" : "On September 1, 1939 Germany invades Poland, initiating the commencement of World War II. After breaking through Polish defenses along the border, the Germans made their way to Warsaw. Thousands of Jewish and non-Jewish refugees fled the invaded Polish capital in hopes that the Polish army could stop the German advances. Warsaw soon surrendered to the Germans after many violent attacks. Soviet forces annexed most of eastern Poland and western Poland stayed under German occupation until the end of the war.",
        
        "GermanAttacks" : "The campaign against the Low Countries and France lasted less than six weeks. Germany attacked in the west on May 10, 1940. German tanks and infantry quickly broke through the French defensive lines and advanced to the coast. Belgium and the Netherlands surrendered in May. More than 300,000 French and British troops were evacuated from the beaches near Dunkirk (Dunkerque) across the English Channel to Great Britain. Paris fell to the Germans on June 14. As part of the armistice agreement France signed with Germany on June 22, Germany occupied northern France and all of France's Atlantic coastline down to the border with Spain. A new French government was established in the town of Vichy, which was in the unoccupied southern part of France. The Vichy government, under Marshall Henri Petain, declared neutrality in the war between Germany and Great Britain, but was committed by the armistice provisions to cooperation with Germany. In the fall of 1940, Vichy administrators  passed antisemitic laws, based on those in Germany. The Statut des Juifs (“Jewish Statute”) excluded Jews from public life and many professions. They also interned thousands of Jews in inhumane conditions in French-administered detention camps—Gurs, Saint-Cyprien, Rivesaltes, Le Vernet, and Les Milles—where thousands died.",
        
        "Krakow" : "From the beginning of March in 1941 German authorities begin to establish a ghetto in Krakow, Poland. Almost 20,000 Jews were forced to live within the boundaries of the ghetto enclosed by a barbed-wire fence and stone wall. From the beginning of the ghetto’s establishment, a Jewish resistance movement worked on underground operations initially to support education & welfare organizations.",
        
        "Chelmo" : "About 30 miles north west of Lodz, killing operations begin at the ‘Chelmo Killing Center’. This center was established by the SS and various police authorities in order to annihilate the Jewish population in an area of western Poland called ‘Wartheland’. Before this facility, Jews were kept at a synagogue in a town nearby Chelmo until they could be taken into gas vans to be killed, then later transported to be cremated. The Chelmo Killing Center operated from December 8, 1941 until March 1943 and then shortly in the summer of 1944.",
        
        "Wannsee" : "On January 20, 1942, 15 high-ranking Nazi Party and German government officials gathered at a villa in the Berlin suburb of Wannsee to discuss and coordinate the implementation of what they called the Final Solution of the Jewish Question.The Final Solution was the code name for the systematic, deliberate, physical annihilation of the European Jews. At some still undetermined time in 1941, Hitler authorized this European-wide scheme for mass murder. Heydrich convened the Wannsee Conference (1) to inform and secure support from government ministries and other interested agencies relevant to the implementation of the “Final Solution,” and (2) to disclose to the participants that Hitler himself had tasked Heydrich and the RSHA with coordinating the operation. The men at the table did not deliberate whether such a plan should be undertaken, but instead discussed the implementation of a policy decision that had already been made at the highest level of the Nazi regime. Heydrich indicated that approximately 11,000,000 Jews in Europe would fall under the provisions of the Final Solution. Heydrich announced that “during the course of the Final Solution, the Jews will be deployed under appropriate supervision at a suitable form of labor deployment in the East. In large labor columns, separated by gender, able-bodied Jews will be brought to those regions to build roads, whereby a large number will doubtlessly be lost through natural reduction. Any final remnant that survives will doubtless consist of the elements most capable of resistance. They must be dealt with appropriately, since, representing the fruit of natural selection, they are to be regarded as the core of a new Jewish revival.",
        
        "Warsaw" : "Between July 22 and September 12, 1942, the German authorities deported or murdered around 300,000 Jews in the Warsaw ghetto. SS and police units deported 265,000 Jews to the Treblinka killing center and 11,580 to forced-labor camps. In response to the deportations, on July 28, 1942, several Jewish underground organizations created an armed self-defense unit known as the Jewish Combat Organization (Zydowska Organizacja Bojowa; ZOB). Rough estimates put the size of the ZOB at its formation at around 200 members. In accordance with Reichsführer-SS (SS chief) Heinrich Himmler's October 1942 order to liquidate the Warsaw ghetto and deport its able-bodied residents to forced labor camps in Lublin District of the Generalgouvernement, German SS and police units tried to resume mass deportations of Jews from Warsaw on January 18, 1943. A group of Jewish fighters, armed with pistols, infiltrated a column of Jews being forced to the Umschlagplatz (transfer point) and, at a prearranged signal, broke ranks and fought their German escorts. After seizing 5,000-6,500 ghetto residents to be deported, the Germans suspended further deportations on January 21. Encouraged by the apparent success of the resistance, which they believed may have halted deportations, members of the ghetto population began to construct subterranean bunkers and shelters in preparation for an uprising should the Germans attempt a final deportation of all remaining Jews in the reduced ghetto. The Germans had planned to liquidate the Warsaw ghetto in three days, but the ghetto fighters held out for more than a month. Even after the end of the uprising on May 16, 1943, individual Jews hiding out in the ruins of the ghetto continued to attack the patrols of the Germans and their auxiliaries. The Warsaw ghetto uprising was the largest, symbolically most important Jewish uprising, and the first urban uprising, in German-occupied Europe.",
        
        "Schindler" : "Oskar Schindler was a German-Catholic businessman who ran an enamel factory near Krakow ghetto that employed cheap labor from the Jews inside the ghetto. When the Krakow ghetto was liquidated and its inhabitants sent to the harsh Plaszow concentration camp, Schindler worried about the fate and treatment of his workers. He befriended and bribed the camp’s commander, Kommandant Amon Goeth, so that his workers could survive their internment in the camp. In late 1944, Goeth was told by Nazi leadership to liquidate Plaszow by deporting Jews to near certain death in Auschwitz and other death camps. At great risk to himself, Oskar Schindler acted to save his workers’ lives. He moved his factory to his hometown Brunnlitz and used his influence with the Nazis to demand that about 1,000 of his workers be sent to operate his factory. He went through considerable lengths to recover some of his workers who had been sent to other camps such as Auschwitz. Afterwards, Schindler worked to provide his workers with food and other necessities. On May 7, 1945, Schindler and the Jews he had saved listened together in his factory as British Prime Minister Churchill announced that the Nazis had surrendered.",
        
        "Dauchau" : "As Allied troops moved across Europe in a series of offensives against Nazi Germany, they began to encounter tens of thousands of concentration camp prisoners. Many of these prisoners had survivedforced marches into the interior of Germany from camps in occupied Poland. These prisoners were suffering from starvation and disease.” On April 29, 1945, the 45th Infantry Division (originally a National Guard unit from  Oklahoma) liberated the camp. Many survivors were near death, suffering from hunger or diseases such as typhus."]
    
    
  
    
    //@IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var bioTextView: UITextView!
    
    
    override func viewDidAppear(_ animated: Bool) {
        bioTextView.flashScrollIndicators()
    }
    
    override func viewDidLoad() {
        // additions: find color hues that match the timeline for each year and set the background color of the
        // individual event page to that year's color
        
        super.viewDidLoad()
        
        // optional binding to unwrap event passed in from segue
        if let timelineEvent = event {
            
            // Navigation bar title
            
            if timelineEvent == "GermanAttacks" {
                navigationItem.title = "German Attacks"
            } else {
                navigationItem.title = timelineEvent
            }
            // Date label
            //if let date = eventDate[timelineEvent] {
                //let dateLabel = UILabel(frame: CGRect(x: 25, y: 75, width: 325, height: 25))
                //dateLabel.text = date
                //view.addSubview(dateLabel)
            //}
            
            
            // Event Image View
            if let eventImg = eventImages[timelineEvent] {
                let eventImage = UIImage(named: eventImg)
                imageView.image = eventImage
                view.addSubview(imageView)
            }
            
            // Caption label
            if let eventCap = eventCaptions[timelineEvent] {
                //let captionLabel = UILabel(frame: CGRect(x: 25, y: 375, width: 325, height: 75))
                captionLabel.text = eventCap
                view.addSubview(captionLabel)
            }
            
            // Bio text view
            if let eventBio = eventBios[timelineEvent] {
                //let bioTextView = UITextView(frame: CGRect(x: 25, y: 450, width: 325, height: 175))
                bioTextView.text = eventBio
                bioTextView.isScrollEnabled = true
                bioTextView.font = UIFont.systemFont(ofSize: 17)
                bioTextView.scrollRangeToVisible(NSMakeRange(0, 0))
                bioTextView.isEditable = false
                
                
                view.addSubview(bioTextView)
            }
            
        }
        
        // Do any additional setup after loading the view.
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
