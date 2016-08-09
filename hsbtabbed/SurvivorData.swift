//
//  SurvivorData.swift
//  hsbtabbed
//
//  Created by Scott Powell on 6/23/15.
//  Copyright (c) 2015 Scott Powell. All rights reserved.
//

import Foundation
import UIKit

struct Survivor {
    /*
        This is going to contain all the survivor data types in one place... What we need:
    
        // Survivor data structures: names array, transition names, namesToImages dict, namesToBio dict, namesToCaption dict, namesToVidURL dict
    */
    
    // names of all survivors for clarity reasons -- in order corresponding to buttons
    let survivorNames = ["Renee Fink", "Frank Fischer", "Esther Lederman", "Hal Myers", "Henry Landsberger", "Albrecht Strauss", "Jessie McIntyre", "Marianne Roberts", "Marlene Appley", "Peter Stein", "Rebecca Hauser", "Robert Patton"]
    
    // first names of the survivor names that are used in the transitions from the bookshelf view to the
    // pages... we should use first names as the keys in our key-value pairs dictionaries
    let transitionName = ["Renee", "Frank", "Esther", "Hal", "Henry", "Albrecht", "Jessie", "Marianne", "Marlene", "Peter", "Rebecca", "Robert"]
   
    // String names mapped to an array of strings containing bio paragraphs
    let namesToBio = [
        // Renee Fink
        // 1
        "Renee": [" ",
        // 2
        "On May 10, 1940, the Germans invaded the Netherlands.  Five days later, after the bombing of Rotterdam, the Dutch forces surrendered. Under German occupation, Jews in Holland gradually lost all their freedoms.  All Jewish families were under suspicion of spying for the Allies and were forced to move inland. Renee’s family then moved to Bilthoven, in North Holland.",
        // 3
        "The family then made the difficult decision to arrange for four-year old Renee to go into hiding with the help of the Dutch Underground, also known as the Resistance. The Underground was very well organized in Holland. A beloved aunt and uncle of Renee’s, joined the Underground. They said: “We’re dead either way, so we might as well make our lives count for something",
        // 4
        "Renee was fortunate in that she only had to be moved to two different hiding places and that she was able to stay with one Dutch Catholic family until after the war ended. In hiding, she was given a new name and religion to hide her Jewish roots. Renee and her new family lived in extreme hunger, and in an occupied and heavily bombed part of Holland.",
        // 5
        "Renee’s parents went into hiding and were betrayed and exterminated. Her grandmother and an aunt were on the run during the war, spending some time together and some time apart.",
        // 6
        "After the war, Renee was reunited with her grandmother. They lived together in another Dutch town until coming to the U.S. in 1948.  Renée was then sent to live with family in the Adirondack Mountains. She moved to various cities before coming to North Carolina in 1989."],
        
        // Frank Fischer
        // 1
        "Frank" : ["Frank Fischer was born in Oppeln, Germany in 1930 and was the son of a successful pediatrician and a stay-at-home mother. He had a sister, who was four years younger than he. His life as a young boy in Oppeln was happy and nothing out of the ordinary.",
        // 2
        "The son of a physician father and a stay-at-home mother, Frank had a sister, four years younger. Gradually, life in Germany began to change and became more restrictive.",
        // 3
        "The Nuremberg Laws, enacted in 1935, revoked citizenship and civil rights for Jews living in Nazi Germany. Jews were no longer permitted to receive an education in public schools or work in civil service and other government regulated professions. Jews were forbidden to interact with or marry non-Jews.",
        // 4
        "Then came Kristallnacht, the “Night of Broken Glass,” a two-day terror campaign (commonly referred to as a pogrom) on November 9-10, 1938.  Frank describes his memories of this horrifying night, when he witnessed flames engulfing his synagogue and piles of religious books and holy Torah scrolls being burned.",
        // 5
        "Frank’s father was fortunate to be able to emigrate to the United States in 1938, having been sponsored by a relative in the South. His mother, now left alone with her two young children, bravely kept their family safe from the Gestapo’s terrifying visits to their neighborhood.",
        // 6
        "In 1939, Frank, his sister and mother were finally able to leave Germany for the United States via the SS Manhattan.",
        // 7
        "Frank shares his life story as a 9-year-old growing up in the tenements of New York City, attending school without knowing English, watching his parents work menial jobs and longing for the grandparents who were left behind.",
        // 8
        " "],
    
        // Esther Lederman
        // 1
        "Esther" : ["Esther was 15 years old when the Germans invaded Poland on September 1, 1939, marking the beginning of World War II.",
        // 2
        "Under German occupation, Jews were subjected to inhumane treatment such as having to clean up horse droppings from the streets, live in crowded ghettos, endure extreme food shortages and rampant disease.",
        // 3
        "Esther, her parents, and younger sister, left their home town of Lodz, the second largest city in Poland, in hopes of having a better chance of surviving the war in the small town of Chmielnik. Esther’s family thereby narrowly escaped being forcibly moved into the infamous Lodz Ghetto.",
        // 4 - Only picture
        " ",
        // 5
        "Esther's father was taken away to perform slave labor, leaving her mother and sister behind in Chmielnik. A decision was then made for Esther to leave this town to find the family a safe haven.",
        // 6
        "Esther left the rest of her family and eventually found shelter with a Catholic family, the Zals. The Zals hid her and another Jewish family, the Ledermans, for 22 months. The Lederman family consisted of a mother, father and two sons, who were close to Esther’s age.",
        // 7
        "In hiding, there was no opportunity for Esther to get word to her mother and younger sister that she was safe nor was there a way to instruct them to join her. She soon learned that her mother and sister had been deported to the Treblinka killing center. Esther could never go outside and was forced, with the Ledermans, to hide in an attic and underground bunker during raids.",
        // 8
        "Esther vividly recalls being liberated from their hiding place by Russian forces. Her father had been liberated from the Buchenwald concentration camp. Esther's mother and sister, however, did not survive Treblinka.",
        // 9
        "Esther and the Ledermans spent some time in a Displaced Persons camp. Esther married Ezjel, one of the Lederman boys, in 1946. Their son was born in Munich in 1948. The six Ledermans came to the United States in 1949.",
        //10
        "  "],
        
        // Hal Myers
        // 1
        "Hal" : ["Hal Hanaeur Myers was born in Karlsruhe, Germany in 1930. Adolph Hitler was appointed Chancellor of Germany in January, 1933. Gradually, Hal began to  experience changes due to anti-Semitic propaganda and sentiments. Eventually, Hal and all Jews living in Germany were stripped of their civil rights.",
            // 2
            "On November 9, 1938, Hal and his brother Dieter, watched from their window as Nazi looters burned and destroyed the synagogue next door. This night came to be known as “Kristallnacht”, the “Night of Broken Glass”. Kristallnacht was an organized pogrom that took place in Germany, Austria and the Sudetenland. An estimated 7,500 Jewish stores were smashed and looted.",
            // 3
            "While the destruction continued into the hours of November 10th, the SS and Gestapo arrested 30,000 Jewish men and sent them to Dachau, Buchenwald, Sachsenhausen, and other concentration camps. Hal’s father was taken to Dachau. He was released after 4 months, returning home, according to Hal, a “ruined man”.",
            // 4
            "After Hal’s father returned home from Dachau, the family was ordered by the Gestapo and police to pack their bags. They were told they had one hour to pack their belongings. The family was deported to Camp de Gurs in southern France when Hal was ten years old where he endured hunger, wet conditions, and witnessed “between fourteen and twenty-four” deaths everyday.",
            // 5
            "Working with the American Quakers, Alice Resch arranged for Hal and his brother to be taken on the first convoy of 48 children from Camp de Gurs to a children’s home, an orphanage, in Aspet, France. There, Alice and the children lived in dormitories. From Aspet, the Quakers arranged for a convoy of 100 children to depart for the United States.",
            // 6
            "Two weeks later, after a stormy crossing of the Atlantic Ocean, Hal and Dieter arrived in New York City. They were introduced to Dave and Inez Myers, their foster parents. The Myers formally adopted Hal and Dieter and took Myers as their family name. Hal learned many years later that his parents were deported from Camp de Gurs to Auschwitz. They were murdered there.",
            // 7
            "Hal has spoken on a number of topics: the story of his rescue from Camp de Gurs by the Quakers; the story of 1,000 unaccompanied Children to the United States in 1935-45; the reunion in Copenhagen 2001 of children rescued from Camp de Gurs; the history of the Holocaust; the recent history of Israel and challenges of negotiating peace there.",
            // 8
            " "],
        
        // Henry Landsberger
        // 1
        "Henry" : ["Henry Landsberger, born in 1926, recalls a happy childhood in Dresden, Germany. Life began to change when he was about 7 years old. Close to a year after Hitler came to power (1933) his father lost his job at a bank because he was Jewish. Henry also recalls his friends gradually not wanting to play with him and by 1937, having to attend a school set up by the Jewish community.",
            // 2
            "On November 9,1938, Kristallnacht, the “Night of Broken Glass”, erupted. Stores owned by Jews were looted and smashed. Synagogues throughout Germany, Austria and the Sudetenland were burned. The famous Semper Synagogue in Dresden, was destroyed that night. Henry’s grandfather, Jakob Winter, was the Chief Rabbi of this synagogue.",
            // 3
            "On November 11th, the doorbell of the Landsberger apartment rang. Henry opened the door and two Gestapo agents pushed their way into the Landsberger home. They arrested Henry’s father.",
            // 4
            "Henry's father was deported to Buchenwald. He survived a one-month internment but returned home a broken man.",
            // 5
            "While his father was in Buchenwald, his mother made the fateful decision to allow Henry to participate in the Kindertransport, a program which helped save the lives of 10,000 Jewish children. Encouraged by the British public and the persistent efforts of refugee aid committees, British authorities agreed to allow German children under the age of 17 to enter Great Britain.",
            // 6
            "All of the children ate in a large hall. On Sundays, prospective adoptive parents were invited to Dovercourt to “select” a child (or multiple children) to bring home. Henry reports that this process was given the name: “slave market”. British couples, Jewish and non-Jewish, selected a child from the circle. Henry was not one of the children chosen, so he went to London.",
            // 7
            "After 18 months in London, during which he experienced the bombings of that city (“the Blitz”), he was taken into a private home in the city of Lincoln, and life as a teenager in war-time Britain began. Henry was fortunate to be taken in by a Welshman named Robin Huws Jones, a very warm, caring individual – well liked by all.",
            // 8
            "In 1940, after Churchill came to power, the Minister of Labor, Ernest Bevin, determined that the British coal mines were short of young coal miners. Bevin instituted a system where British young men (over age 18) would be chosen by lottery or would volunteer to work in the coal mines. Henry volunteered to be a “Bevin Boy”.",
            // 9
            "Henry’s parents managed to obtain visas to immigrate to Chile shortly after the outbreak of war. Henry heard from them throughout the war, as the postal service was functioning, and Henry was able to visit them after completing his studies in London.",
            //10
            " "],
        
        // Albrecht Strauss
        // 1
        "Albrecht" : [" ",
            // 2
            "He lived a unique life.  After Hitler came to power in 1933, Albrecht’s family sent him to live with a Jewish family in London, where he attended school.",
            // 3
            "In 1933, Albrecht's parents sent him to London where he lived at the Regent's Park School, attending the Jewish Secondary School and Latymer Upper Boys School.",
            // 4
            "His parents were finally able to leave Berlin in 1939 and settled in Shreveport, Louisiana, where his father taught at Centenary College. Albrecht left England to join them",
            // 5
            "  ",
            // 6
            "After receiving a B.A. from Oberlin College, Albrecht went on to serve in the American Air Force and fought against the Nazis. He first served in the 798th AAA Bn in France and Germany before entering the Counterintelligence Service.",
            // 7
            "When the war ended, he interrogated Nazis and later was the administrator of a prison for SS officials in Ludwigsburg, Germany.",
            // 8
            "Both while in service and on trips by himself, he visited many important sites in Germany, including the homes of Hitler, Goring, and Himmler in Obersalzberg, Germany; the palaces at Versailles where the Treaty of Versailles was made; and his grandparent’s graves. He has a rich photo collection of his travels.",
            // 9
            "Albrecht shared the desire of many war veterans--to build a more humane world. With a Ph.D. in English from Harvard, he taught at Brandeis, Yale, and the University of Oklahoma before joining UNC-CH in 1960. Albrecht was a Fulbright Fellow and exchange professor at the University of Erlangen. He taught at Duke's Lifelong Learning Institute until he was 85."],
        
        // Jessie McIntyre
        // 1
        "Jessie" : [" ",
            // 2
            "Jessie joined the Army Nurse Corps in 1943. She was sent to Fort Dix, New Jersey, to await assignment and received operating room training. There, she married Don McIntyre, a surgeon. Jessie was next stationed at Fort Jackson, South Carolina, for basic and overseas training, and assigned to the 131st Evacuation Hospital.",
            // 3
            "The United States Army used both field hospitals, consisting of about 400 beds and evacuation hospitals consisting of up to 750 beds. Such hospitals were set up a few days after an invasion and followed the army, located about 25-30 miles behind the front. The hospitals treated patients and returned them quickly to the front. The hospitals relied on mobility using canvas tents.",
            // 4
            "In the summer of 1944, following D-Day, the Evacuation Hospital moved to LeHavre, France. Following the advances by the United States Army into Germany, she treated her first casualties in the German town of Becherbach. They were next sent to the Gusen 1 and Gusen 2 concentration camps. In 1945, she moved on to the Mauthausen concentration camp near Austria.",
            // 5 - Picture only
            "  ",
            // 6 - Picture only
            "Once liberated, the Nazi camp commander, Franz Ziereis,  ran into the mountains and was eventually shot by U.S. forces. Back at the camp, angry liberated prisoners strung his body on the barbed wire fence pictured, and painted “Heil Hitler” across him in a symbolic act of defiance against their former oppressor.",
            // 7
            "She and her colleagues provided as much basic help as possible to more than 6,000 starving, sick, and near-dead prisoners. Jessie explains: ‘It is hard to believe what we found there. The Germans had just left and there were all these dead people just lying in the courtyard, none with clothes, so the first thing the soldiers did was bury them. The other prisoners were so malnourished.",
            // 8
            "In the first week alone, Jessie and fellow nurses took some two-thousand  X-rays--all prisoners were tested positive for tuberculosis. During that week about 200 men died each night. Although her unit was shipped back to the United States, Jessie asked to remain behind and continue to care for the prisoners. In October 1945, she finally returned home.",
            // 9
            "Jessie has spoken to students, educators and the community about her experiences during World War II. When asked what she wants people to learn from her experiences, she says: ‘I would like people to remember how inhumane people can be. We have to be kind to other people, even though they are different than we are."],
        
        // Marianne Roberts
        // 1
        "Marianne": ["Marianne Roberts (born Marianne Cohn) was the daughter of Marcus and Ida Cohn. Marianne was born on June 30, 1920 in Ludwigshafen, Germany, near the city of Mannheim. She had one sister Liselotte (later Lottie) three and a half years older. Her family owned many businesses, including a movie house, an apartment building, and a shoe store.",
            // 2
            "Under Nazi rule, all their businesses were Aryanized. Her father died from tuberculosis on January 1, 1933, the same month that Hitler became the chancellor of Germany. After the Nazi take-over, Her mother Ida Solomon Cohn tried hard to find a way out of Germany. However, the day before their departure, the secret police came to their house and confiscated their passports.",
            // 3
            "Marianne and Lottie lived for the next three years together under the Nazi regime as orphans. They were expelled from school and called to City Hall to have their portraits taken for new identification papers. The portraits had to expose their left ear since the Nazis explained that Jews have distinctive ears that are different from Aryan ones.",
            // 4
            "They escaped by train at night to the American Consulate in Stuttgart to pick up them up, and then fled by a train to Holland without anything save 10 Reichsmarks. When they arrived Dutch friends of their parents gave them money to continue their journey from Holland to England. From England, Marianne sailed alone (her sister came later) on the Cunard White Star to New York.",
            // 5
            " "],
        
        // Marlene Appley
        // 1
        "Marlene" : ["Born in 1925, Marlene came from a privileged household with private tutors, a chauffeur and maids.Marlene Appley  was forced to flee her home in Teplice, in the Ore Mountains of Czechoslovakia, in September, 1938.",
            // 2
            "Marlene Appley  was forced to flee her home in Teplice, in the Ore Mountains of Czechoslovakia, in September, 1938.",
            // 3
            "Her family followed Hitler’s anti-Semitic rhetoric in Germany closely after his rise to power in 1933. She recalls listening to a threatening radio speech by Hitler and saying to her sister, “I guess we will never be grownups.”",
            // 4
            "At the end of September 1938, when Marlene was thirteen, the Munich Agreement gave part of Czechoslovakia (the Sudetenland) to Hitler in an appeasement attempt.",
            // 5
            "Marlene’s parents instructed each of their children to pack a small suitcase with cherished belongings and walk unobtrusively in small groups to the nearest railway station to flee to the interior of the country to Prague.",
            // 6
            "In June 1939, the family boarded a train that took them across Germany to freedom. She recalls the German police and the SS repeatedly entering their train compartment with questions and threats of detaining them.",
            // 7
            " ",
            // 8
            "After the war, Marlene joined a group of young Americans who went to Israel to build a homeland for the survivors of the Holocaust. Marlene participated in the building of a kibbutz in the Galillee (northern Israel) which still exists today.",
            // 9
            "  "],
        
        // Peter Stein
        // 1
        "Peter" : ["Peter Stein was born in 1936 in Prague, Czechoslovakia to a Jewish father and a Catholic mother, a few years before the Nazi occupation.",
            // 2
            "During the war, Peter attended a school where photos of Adolf Hitler and the German flag were displayed in every classroom. Czech teachers were required to describe Nazi victories to their Czech students.",
            // 3
            "Peter dealt with anti-Semitism in school and lived through air raid drills and bombings by Allied aircraft. He describes the fear he felt when he passed German soldiers in the street daily and during an incident with a German officer on a tram.",
            // 4
            "His father was forced into slave labor and deported to Terezin (Theresienstadt), a work and death camp which he managed to survive. The rest of Peter’s father’s nine family members were  killed in Nazi concentration camps.",
            // 5 - Picture only
            " ",
            // 6 - Picture only
            "  ",
            // 7
            "The Stein family had lived in Czechoslovakia for generations, they all spoke German and several members of Peter’s family had worked in Germany before the War. They knew they faced hardships but believed their families could survive by staying in Prague. They never anticipated the atrocities of the Holocaust.",
            // 8
            "After the war, Peter’s parents  applied for American visas but he and his mother had to wait two years before, Peter and his mother received their visas and were able to leave Prague. They arrived in New York Harbor on the night Harry Truman upset Thomas Dewey in the 1948 Presidential election.",
            // 9
            "     "],
        
        // Rebecca Hauser
        // 1
        "Rebecca": ["Rebecca was 22 when her family was deported from her hometown, Ioninna, Greece, along with 1,870 other Jews in March 1944.",
            // 2
            "They were taken on trucks to a “collection point” for Jews in Greece, where they were kept for more than a week before being placed in cattle cars and sent to the death camp of Auschwitz-Birkenau. The train trip took two weeks.",
            // 3
            "In Auschwitz, Rebecca and the other prisoners were stripped of their identity and each received a number tattooed on the arm.",
            // 4
            "Rebecca’s parents perished in Auschwitz.  Rebecca endured a year of forced labor before being sent to Bergen-Belsen, which was liberated in 1945 by British soldiers.",
            // 5
            " ",
            // 6
            "When Rebecca returned to Greece after the war, her cousins helped her return to normal life.  Her uncles brought her to the the U.S. in 1947."],
        
        // Robert Patton
        // 1
        "Robert": ["Robert Patton was born on October 28,1921 in Somerset, Kentucky. He was called to duty in the spring of 1943, a few weeks before graduating from Davidson College. The war was waging on two fronts and the military desperately needed more men. Robert served in the 65th Infantry, XX Corps, Third Army (led by General George S. Patton).",
            // 2
            "Mauthausen concentration camp was liberated on May 5, 1945 by the 11th Armored Division. Robert, his commanding officer and a battalion captain arrived in their jeep one day later. They found no other American soldiers at the camp.  They had been ordered to leave. The SS guards had fled Mauthausen days earlier.",
            // 3
            "At Mauthausen, Robert and two officers were alone among tens of thousands of starving and sick former prisoners. All around the camp lay the dead bodies of thousands more. The overwhelming stench of death hung in the air. A smell, Robert says, he will never forget. ‘The odor was prevalent for miles around the camps and was nearly intolerable’.",
            // 4
            "Many years later, Robert returned to Austria to ensure the proper recognition of the mass grave site at Mauthausen. In 2010, Robert was honored as a liberator by the U.S. Holocaust Museum in Washington, D.C.  He was also awarded the Legion of Honor by the French government in recognition of his service during World War II in France.",
            // 5
            "Robert Patton passed away on April 11, 2013. His tireless efforts to fight Holocaust denial will always be remembered. Robert enjoyed talking to young people about WWII military history and the importance of remembering the Holocaust."]
        
        ]
    
    // String names mapped to an array of strings containg image file names -- image file names are in the order corresponding to the pages in the survivorToBio dict
    let namesToImages = ["Renee": ["Renee1.png", "Renee2.png", "Renee3.png", "Renee4.png", "Renee5.png", "Renee6.png"],
                         "Frank": ["Frank1.png", "Frank2.png", "Frank3.png", "Frank4.png", "Frank5.png", "Frank6.png", "Frank7.png", "Frank8.png"],
                         "Esther": ["Esther1.png", "Esther2.png", "Esther3.png", "Esther4.png", "Esther5.png", "Esther6.png", "Esther7.png", "Esther8.png", "Esther9.png", "Esther10.png"],
                         "Hal":    ["Hal1.png", "Hal2.png", "Hal3.png", "Hal4.png", "Hal5.png", "Hal6.png", "Hal7.png", "Hal8.png"],
                         "Henry": ["Henry1.png", "Henry2.png", "Henry3.png", "Henry4.png", "Henry5.png", "Henry6.png", "Henry7.png", "Henry8.png", "Henry9.png", "Henry10.png"],
                         "Albrecht": ["Albrecht1.png", "Albrecht2.png", "Albrecht3.png", "Albrecht4.png", "Albrecht5.png", "Albrecht6.png", "Albrecht7.png", "Albrecht8.png", "Albrecht9.png"],
                         "Jessie":["Jessie1.png", "Jessie2.png", "Jessie3.png", "Jessie4.png", "Jessie5.png", "Jessie6.png", "Jessie7.png", "Jessie8.png", "Jessie9.png"],
                         "Marianne":["Marianne1.png", "Marianne2.png", "Marianne3.png", "Marianne4.png", "Marianne5.png"],
                         "Marlene":["Marlene1.png", "Marlene2.png", "Marlene3.png", "Marlene4.png", "Marlene5.png", "Marlene6.png", "Marlene7.png", "Marlene8.png", "Marlene9.png"],
                         "Peter": ["Peter1.png", "Peter2.png", "Peter3.png", "Peter4.png", "Peter5.png", "Peter6.png", "Peter7.png", "Peter8.png", "Peter9.png"],
                         "Rebecca":["Rebecca1.png", "Rebecca2.png", "Rebecca3.png", "Rebecca4.png", "Rebecca5.png", "Rebecca6.png"],
                         "Robert":["Robert1.png", "Robert2.png", "Robert3.png", "Robert4.png", "Robert5.png"]]
    
    // String names mapped to an array of string captions corresponding to each picture
    
    let namesToCaptions = [
    // Renee Fink
    // 1
    "Renee": ["Born in the Netherlands, Renee Fink lived in an idyllic seaside town Scheveningen.",
    // 2
    "Renee standing in front of a Snow White and the Seven Dwarves mural.",
    // 3
    "The Catholic rosary beads Renee used to pray with in hiding.",
    // 4
    "A portrait of Renee taken around 1948 soon after arriving to the US.",
    // 5
    "Renee’s Birth Father’s Identity Card with “J”, indicating him as Jewish.",
    // 6
    "Renee in 2014 at age 76."],
    
    // Frank Fischer
    // 1
        "Frank" : ["Frank, 4 years old in Oppeln, Germany",
    // 2
            "Frank, 4 years old. Mother, Irma. Sister Eva, 6 months old.",
    // 3
    "An American Newspaper reports on the discriminating Nuremberg Laws that stripped Jews of citizenship",
    // 4
    "This picture depicts a synagogue set aflame during Kristallnacht. Germany, November 1938.",
    // 5
    "Two young refugees first look at New York.",
    // 6
    "Coming to America on the SS Manhattan",
    // 7
    "Crowded tenement life left one with few personal possesions; however, Frank kept this bear with him till today.",
    // 8
    "Frank has spoken to middle school students and university students."],
    
    // Esther Lederman
    // 1
    "Esther" : ["Esther with her sister several years before the war broke out. Her sister, Halina, was four years younger.",
    // 2
    "German soldiers would make Jewish men and women perform degrading tasks such as cleaning the sidewalks.",
    // 3
    "Jews no longer felt safe in Lodz. Religious Jewish men had their beards forcibly pulled out by German soldiers.",
    // 4 - Only picture
    "Esther’s parents, Israel and Rose Gutman, in their engagement photo in 1923.",
    // 5
    "This bridge connected the two halves of the Lodz ghetto, which Esther fled just before its closing.",
    // 6
    "The Zal family hid Esther Gutman and the Lederman family (mother, father, 2 sons) for 22 months.",
    // 7
    "An underground bunker similar to the one Esther would use to take shelter during raids.",
    // 8
    "This is the cover of the book Esther wrote about her time in the Holocaust.",
    // 9
    "This is a photo of Esther and her husband, both of whom survived by hiding out in a barn together for 18 months during the war.",
    //10
    "Esther in North Carolina."],
    
    // Hal Myers
    // 1
    "Hal" : ["Hal with his mother, father and brother, Dieter.",
    // 2
    "Circa 1938—Hal’s bedroom is seen on the top floor of the apartment building adjacent to synagogue at 15 Kronenstrasse.",
    // 3 - Only picture
    "Destruction of Synagogue in Karlsruhe during Kristallnacht, 1938.",
    // 4
    "This is a picture of the barbed wire used at Gurs, the internment camp where Hal was taken to live by the Nazis.",
    // 5
    "Hal with his friends at the childrens’ refugee home in Aspet, France.",
    // 6
    "Hal and his younger brother Dieter at the old port of Marseille. Picture taken by Tanta Anna’s daughter who lived in France.",
    // 7
    "The first Quaker building that Hal Myers stayed in after being rescued from Camp de Gurs",
    // 8 - Picture only
    "Hal and Nora Myers moved to North Caroina in 2009. This is a contemporary portrait of the Myers family."],
    
    // Henry Landsberger
    // 1
    "Henry" : ["Henry’s grandfather, Rabbi Jakob Winter.",
    // 2
    "Firemen saving the Star of David on top of the synagogue amid smoke from fires on Kristallnacht, November 8, 1938.",
    // 3 - Picture only
    "The Nazis re-issued Henry’ birth certificate in 1939, adding “Israel” to his name and stamping the Nazi seal.",
    // 4
    "In an ironic twist, Henry’s father had received a medal from Hitler for his WWI service in the German army.",
    // 5
    "This was the housing in Dovercourt, England for the Kindertransport children.",
    // 6 - Picture only
    "This depicts the communal dining for Kindertransport children in Doverport, England.",
    // 7
    "The Townley Castle School Hostel for Refugee Children in London where Henry stayed.",
    // 8
    "Henry visiting his Lincoln home, 101 West Parade, in 1980.",
    // 9
    "Henry with his father.",
    //10
    "Henry with his wife, Betty. Henry became a professor at the University of North Carolina-Chapel Hill."],
    
    // Albrecht Strauss
    // 1
    "Albrecht" : ["He was born in Berlin May 17, 1921, to Dr. Bertha Badt-Strauss and Dr. Bruno Strauss.",
    // 2
    "Albrecht as a toddler in the park.",
    // 3
    "Albrecht at around age 7, when he still lived in Germany before the rise of the Nazis.",
    // 4
    "Picture of Albrecht's father in Louisiana.",
    // 5
    "Then, he went on to serve in the American Air Force against the Nazis. This is Albrecht in uniform in 1943.",
    // 6
    "Albrecht in the Intelligence Service of the U.S. army.",
    // 7
    "After the war, Albrecht administered a prison in Ludwigsberg.",
    // 8
    "May 1945: A picture taken of Hitler’s home “Der Berghof” in Southern Germany",
    // 9
    "Albrecht and his wife with his old uniform."],
    
    // Jessie McIntyre
    // 1
    "Jessie" : ["Jessie McIntyre was born in 1922 in New Jersey. She attended a nearby nursing school, specializing in pediatrics.",
    // 2
    "Jessie and her husband during the war years.",
    // 3
    "Jessie at Camp Mauthausen in June of 1945. 200 men would die each night of sickness and starvation.",
    // 4
    "St. Florian Monastery, a beautiful church across the Danube River, is visible from Camp Mauthausen",
    // 5 - Picture only
    "This is SS Fuhrer Franz Ziereis, a senior official at the camp Mauthausen.",
    // 6 - Picture only
    "  ",
    // 7
    "A liberator burying two prisoners’ starved bodies at Mauthausen camp.",
    // 8
    "A mass grave that liberators dug to bury the bodies found in camps.",
    // 9
    " "],
    
    // Marianne Roberts
    // 1
    "Marianne": ["Nazi officials took this picture of her ear because they thought Jews had different ears than Germans.",
    // 2
    "A man examines the Kaiser-Wilhelmstrasse synagogue in Ludwigshafen, which was destroyed in November 1938.",
    // 3
    "Marianne at age 10",
    // 4
    "Marianne at age 16.",
    // 5
    "Marianne was very proud of her life mission to educate people about the lessons of the Holocaust. Marianne passed away in 2013."],
    
    // Marlene Appley
    // 1
    "Marlene" : ["Marlene was born in Teplice, Czechoslovakia where her father ran a textile factory. This was her home.",
    // 2
    "Marlene age 3 (in white, center) at Father’s textile mill. Her family chauffeur is in the corner. Teplice, 1928.",
    // 3
    "Marlene (second from left) with siblings at age five.",
    // 4
    "Family portrait prior to fleeing their home in 1938.",
    // 5
    "Middle School, Grade 8, 1939 in Prague. She’s in the far, back left corner.",
    // 6
    "This picture, taken in May, 1939, captures Marlene with other escapees; however, many in this picture perished in Nazi camps.",
    // 7
    "The family arrived safely in New York less than a month before Hitler invaded Poland and World War II started.",
    // 8
    "At the Kibbutz, Marlene put her agricultural knowledge to use and managed one of the cow barns.",
    // 9
    "She currently resides in Chapel Hill and is a retired professor of anatomy and physiology. She enjoys speaking with students."],
    
    // Peter Stein
    // 1
    "Peter" : ["This is the Prague Castle. When the Nazis took over, it was the home of the local Nazi governor ",
    // 2
    "Peter as a young schoolboy. He would face rising anti-Semitism from his teachers and classmates due to his father’s Judaism.",
    // 3
    "This picture shows ethnic Germans saluting Hitler as he annexes the Sudetenland to Germany in 1938.",
    // 4
    "These are typical sleeping bunks in a Terezin bunker. Upwards of three to four victims would share one “cot”.",
    // 5
    "Peter Stein’s family tree detailing fate of each member.",
    // 6
    "This gate, which ironically reads “work makes you free”, marks the entrance to the labor camp, Terezin or Theresienstadt.",
    // 7
    "Although his father would survive, Peter's grandmother, aunts, uncles, and cousins would die in Nazi camps.",
    // 8
    "Peter’s class in Prague, Czechoslovakia. He describes how he was bullied for being Jewish after the Nazi invasion.",
    // 9
    "He earned his Ph.D. in sociology from Princeton University and has taught courses on the Holocaust and other genocides."],
    
    // Rebecca Hauser
    // 1
    "Rebecca": ["The Jewish community of Ioannina was loaded onto open trucks for deportation. ",
    // 2
    "The Larissa Memorial.",
    // 3
    "Jews from Ioannina and other Greek towns board a lice infested  freight train for a two week ride to Germany.",
    // 4
    "Auschwitz, Birkenau.",
    // 5
    "Her three brothers, who had also been deported from Ioannina, never returned, and their fate is unknown.",
    // 6
    "Rebecca with the National Council for Jewish Women in Athens, Greece in 1946."],
    
    // Robert Patton
    // 1
    "Robert": ["These are souvenirs from his tour: his dog tags and a hand grenade.",
    // 2
    "Robert took back to America granite from Mauthausen Rock Quarry.",
    // 3
    "This is a Nazi medal Robert took back to America.",
    // 4
    "This medal presented to Robert was rewarded for his war efforts.",
    // 5
    "Robert with all his medals and awards, including a Bronze Star."]
    
    ]
    
    
    
    
    
    
    
    
    
    
    
    
    
}