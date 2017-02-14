//
//  MapLocViewController.swift
//  
//
//  Created by Scott Powell on 8/26/15.
//
//

import UIKit

class MapLocViewController: UIViewController {
    // view controller for Map Group Locations such as Camps
    
    // Location Data
    let locationImages = ["Berlin" : ["locimage2"],
        
        "Teplice" : ["locimage4"],
        
        "Nuremberg" : ["locimage8"],
        
        "Prague" : ["locimage10"],
        
        "Le Havre" : ["locimage14"],
        
        "Larissa" : ["locimage17"],
        
        "Dresden" : ["locimage19"],
        
        "Mauthausen" : ["locimage22"],
        
        "Auschwitz" : ["locimage26"],
        
        "Camp de Gurs" : ["locimage29"],
        
        "Terezin" : ["locimage34"],
        
        "Bergen-Belsen" : ["locimage37"],
        
        "Karlsruhe" : ["locimage38"]]
    
    
    
    let locationsToBios = [
        
        "Berlin" : "Albrecht Strauss was born in Berlin in 1921 to two well-educated doctors. Berlin at this time was the capital of the Weimar Republic, Germany’s first experiment with democracy. Berlin was a cultural hub throughout the 1920s and enjoyed a rather decadent lifestyle similar to that of the “roaring Twenties” in America. New and lavish art styles such as jazz and “Talkies” or movies that were not silent, became popular. Berlin became obsessed with anything new and exotic – even the American Wild West gained interest among the Berlin elite! However, with the onset of the Great Depression in the early 1930s, Berlin grounded to a halt. Further financially injured by the Treaty of Versailles which ended World War I, Berlin suffered huge unemployment and massive inflation. Kids used blocks of money as toys, and mothers used money as firewood in their homes as it became essentially valueless. In this environment, politically extreme groups such as communists and fascists began to arise in Germany, including Hitler’s Nazi Party. Promising stability and blaming the country’s problems on groups such as the Jews and communists, Hitler was elected Chancellor in 1933. That year, he consolidated his power when the parliamentary building, the Reichstag, in Berlin was burned down and used it as an excuse to have martial law declared. When the President died in 1934, Hitler became sole dictator of Germany. Albrecht and his family fled the progressively more dangerous Berlin in 1933.",
        
        "Teplice" : "Marlene Appley was born in Teplice, Czechoslovakia in 1925. A small town in the Ore Mountains, Teplice also stood in the region known as the Sudetenland, the border lands of Czechoslovakia that lay near Germany. By the 1930s, estimates show that Jewish families ran 89 of the 231 larger businesses in the town. Marlene’s father represented one of these companies, a large textile factory. As a result, Marlene’s family lived comfortably in Teplice. However, with the rise of Nazi-ism and Hitler’s annexation of neighboring Austria, many Jews in Teplice began to grow nervous of further Nazi expansion. These fears were realized in September 1938 when the Munich Agreement between France, England, and Germany gave Germany the right to annex the Sudetenland. Estimates show that about 7,000 Jews left the town by the end of 1938.These families left behind their property, which would largely be confiscated by the Nazis. In total, 526 houses and villas and an additional 511 apartments were abandoned by their Jewish occupants.Marlene and her family fled inward to Prague at this time. The Jewish population in Teplice never recovered from the huge loss of life and displacement caused by the Holocaust. A recent count places the Jewish population of Teplice and neighboring towns at only 100, with only one synagogue. Many signs of Jewish life were erased by either the Nazis or the local community post-war in an attempt to forget the atrocities committed there. Citation: Kurrein, Martin. “History of the Jewish Community in Teplice.” Jewishgen.org.2008. Web. 05 July 2015.",
        
        "Nuremberg" : "Although none of the survivors within the Holocaust Speaker’s Bureau’s network lived in the city of Nuremberg, all those who lived in Germany were deeply impacted by events in this city. In particular, Frank Fischer survived a harrowing childhood in Oppeln, Germany, and directly credits his difficulties to the Nuremberg Laws that were enacted in 1935. Since 1933, Jews had gradually been stripped of their rights including working in certain professions and attending certain public areas. In 1935, Nazi Germany took a decisive blow and stripped Jews of their citizenship with the Nuremberg Race Laws. This law prohibited them from marrying non-Jews, working in any government or government-regulated job (ex: medicine, education, law), and stripped them of practically all civil rights. Nuremberg represented one of of the hot-beds of Nazi support, and annually until 1939 had massive Nazi party rallies. These rallies represented a propaganda tool to gain support for the party and intimidate any opponents from criticizing the unified party. At its peak, the rally encompassed nearly a half million Nazi supporters.",
        
        "Prague" : "Peter Stein, son of a Jewish father and Christian mother, endured over six of anti-Semitism while Prague was under Nazi control from March 1939 until May 1945. He provides unique insight into how Nazi-ism was institutionalized in schools where students and teachers were all expected to salute the Nazi flag and shrines of Hitler in each classroom. Pro-Nazi textbooks and lessons were utilized in class. Outside of the classroom, hardships continued at home where blackouts and food rationing were commonplace. Peter passed German soldiers on the street daily. Soldiers just like these had sent his father to perform slave labor in Terezin camp and sent the rest of his father’s family to various death and labor camps. Prior to the Holocaust, almost twenty percent of the city was Jewish (92,000 Jews lived in Prague). Two-thirds of these individuals, approximately 55,000, would die in the Holocaust. After the war, about 15,000 Jews remained; however, by 1950, about half of them had emigrated to Israel to escape ongoing anti-Semitism and insecurity.",
        
        "Le Havre" : "On January 2, 1945, Robert Patton landed with the 65th Infantry, xx Corps, Third Army in Le Havre, France. Fellow Holocaust Speaker Bureau Speaker Jessie McIntyre also went through Le Havre while serving as a nurse in Europe. Prior to his arrival, the Germans had used Le Havre as a naval base to both protect continental Europe from the allies as well as plan an attack on the United Kingdom. The population of the town faced severe censorship, food shortages, and anti-Semitism. The mayor of the town, Leon Meyer, was forced to step down because of his religion. In preparation for landing on the continent, Allied planes bombed the town and Nazi port causing extensive damage. After the city was liberated in September 1944, it became a staging ground for many American troops deployed to Europe. After the war, liberated Allied Prisoners-of-War were processed through Le Havre. The city  would receive the French Legion of Honor for the bravery with which it faced its destruction and occupation by the Nazis. The city has since been rebuilt and is now a World Heritage Site due to its extraordinary rebuilding process.",
        
        "Larissa" : "After being deported from her home, Rebecca Hauser and her family were taken to Larissa, Greece. In Larissa, the Nazis had congregated all the region’s Jews, confiscated any valuables, and prepared them to be deported to camps in Poland and Germany. Greece as a whole fell under not just German occupation during World War II, but also that of the Italians and Bulgarians (Nazi allies). Larissa (and Rebecca’s hometown of Ioninna) were under Italian control from 1941 until September 1943 when the Germans assumed control. While the Italian Fascist government had passed anti-Semitic beginning in 1938, Jews remained relatively safe in Italian territory. The Italian government rarely agreed with German requests to deport Jewish residents to German camps. Upon the German assumption of control of Greece, the Jewish population no longer enjoyed this safety. Larissa itself was home to 1,175 Jews in 1940. Upon Nazi control of the region, local rabbi Isaac Casuto advised his congregation to leave for the mountains, and approximately 950 did so. Early in March 1944, the Nazis held mandatory censuses of all Jews and instituted a curfew from five o’clock in the evening till seven in the morning in Ioninna (Rebecca’s hometown). On March 25, 1944 Jews from Ioninna, Larissa, and Trikala were left in a military garage in Larissa.  The Nazis imprisoned the Jews in this crowded condition for a week, and forcibly confiscated anything of value. From here, these Jews were deported to Auschwitz in Poland, where a majority were killed in gas chambers. In 1948, the Jewish population of Larissa was 626, and today, only 15 students attend the Jewish school.",
        
        "Dresden" : "Seven years before Hitler came to power, Henry Landsberger was born in Dresden, Germany to a family with a history of leadership in the local Jewish community. His grandfather, Jakob Winter, had been the last chief Rabbi of the famous Semper Synagogue. However, when his father was sent to Buchenwald in late 1938, his mother decided to send Henry to safety out of the country. Although Jews had first started living in Dresden in the early 1300s, they had faced persecution, pogroms, and expulsion intermittently until the 1700s. Attaining full civil equality in 1869, Dresden Jewry grew to a population of over 6,000 in 1925 partly under the rabbinic leadership of Jakob Winter. Its well-endowed Jewish library attracted scholars from all over Germany. Before Kristallnacht, over 700 Polish Jews were deported from Dresden back to Poland. Henry’s father was among another 150 Jews deported from Dresden to Buchenwald on or shortly after Kristallnacht. When the Jewish population was kicked out or deported, the Germans burned the synagogue and then charged the Jews the fee for its demolition. Before the Nazis could deport the last of the Jews of Dresden in February 1945, an Allied bombing attack created a chaos that allowed them to escape. Today, the bombing of Dresden remains highly controversial as over 3,900 tons of explosives were dropped on the city killing over 20,000 civilians and destroying over 1,600 acres of the city. In 2002, a new synagogue was opened on the same site as old one destroyed on Kristallnacht. The new synagogue even incorporated the original Star of David from the old temple above its entryway.",
        
        "Mauthausen" : "Two liberators in the Holocaust Speaker Bureau’s speaker network witnessed the horrors of Mauthausen-Gusen concentration camp. Robert Patton saw the camp the day after liberation, and has been back many times to ensure its proper commemoration. Jessie McIntrye worked as a nurse at the camp for five months after the war, administering to survivors and former prisoners. They both detail the astonishing starvation and sick condition of the surviving prisoners as well as the mass graves dug for those who did not survive. Jessie McIntyre in particular can attest to the rampant tuberculosis and typhus present in the camp. The camp “Mauthausen” actually consisted of two main camps at Mauthausen in northern Austria and nearby Gusen. However, as the camps grew after 1938, nearly 100 other subcamps in the surrounding area were constructed. Slave labor at the various camps included mining stone at Mauthausen quarry, manufacturing munitions and war material in factories, and digging in various mines throughout southern Germany and northern Austria. All told, death toll estimates hover between 120,000 and 320,000 throughout its opening from 1938-1945. A particularly cruel camp, Mauthausen earned the chilling nickname “Knochenmuhle”, the Bone-Grinder, for its cruel labor in the quarries. Typical for German slave labor camps, the work conducted was performed not only for the German government, but also for numerous private companies in the community. Inmates came from a wide range of backgrounds and nationalities including communists, Jehovah’s witnesses, Jews, homosexuals, and individuals from Poland, the USSR, Yugoslavia, Hungary, and the Netherlands. On May 5, 1945 the American 11th Armored Division, 3rd army liberated the camp as the SS guards had already abandoned the Mauthausen complex. In 1949, Mauthausen was named  a national memorial site by Austria.",
        
        "Auschwitz" : "Rebecca Hauser and her family arrived in an overcrowded freight train at Auschwitz in April, 1944. When she arrived, she must have seen the now infamous gate of Auschwitz-Birkenau which has a sign that reads “Arbeit Macht Frei” which means “Work makes you free”. After surviving the slave labor there for almost a year, she was moved to Bergen-Belsen. However, both her parents would perish in Auschwitz. She lost contact with her three brothers after deportation, and till today does not know whether they were murdered in Auschwitz or survived. The Auschwitz-Birkenau in southern Poland camp complex consisted of three main camps made up of the original camp, an extermination camp, and a labor camp for a chemical company (IG Farben) in addition to 45 smaller satellite camps. Although its initial prisoners were Polish, by the war’s end about one million Jews would be murdered in the camp. Prisoners were told to enter the five gas chambers (disguised as showers) at Auscwchitz for cleaning and delousing, but would then be locked in as the chamber filled with a lethal gas called Zyklon B. Once they were dead, Nazi guards took any jewelry, hair, or dental work from the corpses (gold from the teeth would be melted down and reused).  At its peak, the crematorium were burning 20,000 corpses per day. Auschwitz also remains notable for its use of fake scientific medical experiments on prisoners. The most notorious “doctor”, Josef Mengele, committed such atrocities as purposely giving prisoners awful diseases, experimenting on those with physical abnormalities, and attempting to change eye color by injecting chemicals into prisoners’ eyes. When Allied forces began to approach the camp, the Nazis did not want the prisoners, witnesses to the cruel conditions of the camp, to fall into Allied hands. So, in January 1945, they forced 58,000 prisoners on a death march west towards Germany. Thousands died on this journey. Russian forces liberated the camp on January 27th, where they found survivors, corpses, prisoners’ old belongings, and about 8.5 tons of human hair taken off corpses. Today, Auschwitz is a World Heritage Site and memorial to the victims of the camp.",
        
        "Camp de Gurs" : "In 1940, Hal was deported from Karlsruhe in southern Germany to Camp de Gurs in southern France. At the camp, he faced hunger, wet and cold conditions with little clothing and shelter, and witnessed numerous deaths everyday from starvation, disease or the elements. Most notably, Hal remembers how everything – his bunks, his clothes, his own body – was always covered in a layer of dirt and mud. In the camp, nearby Quakers provided food and comfort. Eventually, he was able to escape with a group of Quakers and make his way to America.The majority of Camp de Gurs residents came from the southern German state of Baden when between 6,500 and 7,500 Jews were deported there in October 1940. Of the 7,000 or so Jews, 1,710 were eventually released, 755 escaped, 1,940 were allowed to emigrate, and 2,820 were sent to forced labor. Camp de Gurs was administered by the Vichy French government – a pro-Germany, puppet government that controlled the south of the country. Camp de Gurs remains unique for being the only camp to which German jews were deported that lies to the west of Germany.",
        
        "Terezin" : "Peter’s father, a Jew, was deported to Terezin (a.k.a. Theresienstadt) where he endured forced labor and deplorable conditions. Peter’s father is one of over 97,000 Czech Jews (and 15,000 children) deported to Terezin. However, he is one of the few who survived. Of the 15,000 children sent to Terezin, under 200 survived. Terezin is unique because it was not only a concentration camp, but also a propaganda tool. Before it was a camp, Terezin was a small city of 5,000, but its population was increased to 55,000 Jews during the war causing severe overcrowding and ripe conditions for disease to spread. The Red Cross was allowed to visit once to see whether the Jews in the camp were treated humanely. On that day, the Nazis spruced up the camp, adding nice goods and groceries to all the shop windows and giving the prisoners new clothing to wear. Because of this, the Red Cross never discovered the horrible treatment usually suffered by Terezin’s Jews. Then, the Nazis went one step further and made a propaganda video giving false information about life in the camp. While Terezin was not a death camp like Auschwitz, its overcrowded conditions caused many deaths due to starvation and exposure. Also, it acted as a collection point for Jews before being sent further east to death camps such as Auschwitz. Terezin housed many elderly, families, and artists. For this reason, some of the only Holocaust art produced secretly in  concentration camps originates in Terezin.",
        
        "Bergen-Belsen" : "Rebecca Hauser, a Holocaust survivor originally from Greece, was liberated by British troops from death camp Bergen-Belsen on April 15, 1945. She, along with many others, had been transported from Auschwitz to Bergen-Belsen near the end of the war. When Russian troops neared Auschwitz, the Nazis feared that the world would discover their crimes, so they attempted to transport many of the prisoners to other camps, such as Bergen-Belsen. As Allied armies approached Germany, Bergen-Belsen became a collection point for Jews and prisoners from other concentration camps. In some cases, the Nazis forced prisoners to march hundreds of miles in “death marches” across Germany when they evacuated these camps. As more and more prisoners collected in Bergen-Belsen, the camp’s meager resources of shelter, food, and water ran low, and inmates would often go days without these necessities. This overcrowding also caused outbreaks of typhus, tuberculosis, and dysentery. A total of 50,000-75,000 inmates died in Bergen-Belsen, and almost 35,000 of these prisoners died from typhus due to overcrowded and unsanitary conditions. Typhus is a terrible disease most often spread by insects like fleas and ticks. Unfortunately, many of those that died from typhus perished in the weeks just before or after liberation. Among these victims were Anne Frank who would become famous posthumously for her diary of her time in hiding and her sister. After the war, Bergen Belsen became a displaced persons camp.",
        
        "Karlsruhe" : "Hal Myers was born in Karlsruhe in 1930. He lived next to the synagogue, and watched from his attic window as looters burnt it down in November 1938. Although Jews had lived in Karlsruhe since the early 1700s, they only gained their rights gradually. In 1820, they were allowed to practice medicine and law and then given complete emancipation in 1862. By 1890, Jews had been elected to the city council and to judgeship positions. The Nazis began by ordering all Polish Jews in Karlsruhe to emigrate back to Poland in October 1938. Shortly after, synagogues were destroyed that November, and all males were sent to the camp at Dachau. The remaining Jews survived under Nazi rule and were gradually deported; almost 900, including Hal, were sent to Camp de Gurs in southern France in October 1940, and those remaining were sent to camps in the east in the coming years. There were 3,199 Jews in Karlsruhe in 1933 when Hitler came to power and only 63 remained in 1946 after the war. During the war, the town, including the palace, was decimated by bombing. After the war, an American military base was established there."]
    
    
    @IBOutlet weak var bioTextView: UITextView!
    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var imgView: UIImageView!
    
    
    var locGroup = String()
    var locNumber = Int()
    var location = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // design switch statements to attain precise location that is passed from last view
        if locGroup == "Birth Places" {
            switch locNumber {
            case 0:
                location = "Berlin"
            case 1:
                location = "Dresden"
            case 2:
                location = "Prague"
            case 3:
                location = "Karlsruhe"
            default:
                location = "No location chosen"
            }
        } else if locGroup == "Camps" {
            switch locNumber {
            case 0:
                location = "Mauthausen"
            case 1:
                location = "Auschwitz"
            case 2:
                location = "Camp de Gurs"
            case 3:
                location = "Terezin"
            case 4:
                location = "Bergen-Belsen"
            default:
                location = "No location chosen"
            }
        } else if locGroup == "Influential Cities" {
            switch locNumber {
            case 0:
                location = "Nuremberg"
            case 1:
                location = "Larissa"
            case 2:
                location = "Le Havre"
            case 3:
                location = "Terezin"
            default:
                location = "No location chosen"
            }
        }
        
        
        
        titleLabel.title = location
        bioTextView.text = locationsToBios[location]!
        bioTextView.scrollRangeToVisible(NSMakeRange(0, 0))
        //bioTextView.contentInset = UIEdgeInsets(top: -8.0, left: 0.0, bottom: 0.0, right: 0.0)
        imgView.image = UIImage(named: locationImages[location]![0])
        bioTextView.isEditable = false
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        bioTextView.flashScrollIndicators()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segID = segue.identifier
        
        if segID == "locationToMap" {
            // next view controller is the tab controller which should be set to the map tab
            let nextViewController = segue.destination as! UITabBarController
            nextViewController.selectedIndex = 1
            
            // the Storyboard ID for the tab bar controller was changed to tabBarController
        }
    }
    
    /* func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let imageArray = locationImages[location] {
            return imageArray.count
        }
        
        return 0
    } */
    
    /* func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! myViewCell
        
        if let imageArray = locationImages[location] {
            cell.imgView.image = UIImage(named: imageArray[indexPath.row])
        }
        
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
