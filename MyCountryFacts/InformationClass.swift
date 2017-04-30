//
//  InformationClass.swift
//  MyCountryFacts
//
//  Created by Junaid Khan on 26/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class InformationClass
{
    var pakistan = [Pakistan]()
    var KPK =  [KPk]()
    var pakInfo1 = [String]()
    var kpkInfo = [String]()
    
    var _mainlabel : String?
    var mainlabel: String
        {
            if _mainlabel == nil
            {
                _mainlabel = ""
        }
        return _mainlabel!
    }
    init(mainlabel: String) {
        self._mainlabel = mainlabel
    }
    init() {
        
    }
    func generateData()
    {
        let val1 = Pakistan(context: context)
        val1.fact = "PAKISTAN IS THE 6TH LARGEST NATION IN THE WORLD CONTAINING ONE OF THE OLDEST CIVILIZATIONS IN HISTORY [MEHRGARH, ON THE KACHI PLAIN OF BALOCHISTAN, DATES BACK TO 6000 BC AND ONE OF THE EARLIEST KNOWN FARMING VILLAGES OF INDUS VALLEY PAKISTAN]"
        let val2 = Pakistan(context: context)
        val2.fact = "PAKISTAN HOLDS 4 OUT OF THE TOP 14 HIGHEST PEAKS IN THE WORLD; K2 IS THE 2ND HIGHEST MOUNTAIN IN THE WORLD."
        let val3 = Pakistan(context: context)
        val3.fact = " PAKISTAN HAS WORLD’S LARGEST IRRIGATION SYSTEM I.E. 3 TIMES BIGGER THAN RUSSIA’S CANAL SYSTEM EVEN THOUGH PAKISTAN IS AT LEAST 10 TIMES SMALLER THAN RUSSIA."
        let val4 = Pakistan(context: context)
        val4.fact = "PAKISTAN NATIONAL ANTHEM TUNE RANKS 1ST IN TOP 3 TUNES OF THE WORLD AND 1ST IN THE WORLD’S NATIONAL ANTHEM."
        let val5 = Pakistan(context: context)
        val5.fact = " PAKISTAN HAS THE WORLD’S HIGHEST PAVED INTERNATIONAL ROAD – THE KARAKORAM HIGHWAY, WHICH IS SAID TO BE THE 8TH WONDER OF THE WORLD."
        let val6 = Pakistan(context: context)
        val6.fact = " PAKISTAN HAS THE 6TH LARGEST ARMED FORCES IN THE WORLD AND ONLY NUCLEAR POWER IN THE MUSLIM WORLD."
        let val7 = Pakistan(context: context)
        val7.fact = "PAKISTAN IS THE WORLD’S 7TH LARGEST POOL OF SCIENTISTS AND ENGINEERS"
        let val8 = Pakistan(context: context)
        val8.fact = "PAKISTAN HAS KHEWRA SALT MINE, WHICH IS THE 2ND LARGEST SALT MINE IN THE WORLD."
        let val9 = Pakistan(context: context)
        val9.fact = "PAKISTAN IS RANKED 4TH IN TERMS OF BROADBAND INTERNET GROWTH IN THE WORLD."
        let val10 = Pakistan(context: context)
        val10.fact = " THE WORLD’S LARGEST VOLUNTEER AMBULANCE SERVICE PROVIDING ORGANIZATION OPERATES IN PAKISTAN THAT WAS FOUNDED BY A. SATTAR EDHI, A SOCIAL WORKER OF INTERNATIONAL FAME."
        let val11 = Pakistan(context: context)
        val11.fact = "PAKISTAN IS MAKING 80% OF THE WORLD’S SOCCER BALLS AT ONE OF THE LARGEST FACILITIES IN SPORTS GOOD IN SIALKOT."
        let val12 = Pakistan(context: context)
        val12.fact = "PAKISTAN TREASURES ONE OF THE RARE SPECIES OF DOLPHIN KNOWN AS ‘BLIND DOLPHIN’ IN WATERS OF INDUS RIVER, ONE OF THE LONGEST RIVERS IN THE WORLD."
        let val13 = Pakistan(context: context)
        val13.fact = "Pakistan is ranked 95th in terms of industrial production even though it has 4th largest coal and 7th largest copper reserves in the world."
        let val14 = Pakistan(context: context)
        val14.fact = "PAKISTAN IS RANKED 25TH IN TERMS OF OVERALL AGRICULTURAL PRODUCTION WITH CHICKPEAS ON TOP,5TH IN MANGOES, 6TH IN DATES, 8TH IN RICE,  9TH IN WHEAT AND 10TH IN ORANGE PRODUCTION IN THE WORLD."
        ad.saveContext()
    }
    func FetchData()
    {
        let fetchRequest : NSFetchRequest<Pakistan> = Pakistan.fetchRequest()
        do
        {
            self.pakistan = try context.fetch(fetchRequest)
        }
        catch
        {
            }
        for values in pakistan
        {
            self.pakInfo1.append(values.fact!)
        }
    }
    func generateDataKPK()
    {
        let val1 = KPk(context: context)
        val1.fact = "The second highest mountain peak in the world, K2, is located in these Northern Area."
        let val2 = KPk(context: context)
        val2.fact = "The Karakoram Highway is the bridge between China and Pakistan, and has been constructed at a height of 15,397 ft. making it the highest paved international road in the world."
        let val3 = KPk(context: context)
        val3.fact = "The highest polo ground in the World is located in Gilgit, Baltistan on the Shandur Top commonly referred to as the roof of the world."
        let val4 = KPk(context: context)
        val4.fact = "The people of Khyber Pakhtunkhwa converse in a variety of languages such as Khowar, Hindko, Kohistani, Shina, Torwali, Kashmiri, Kalasha, Farsi and Kaghani."
        let val5 = KPk(context: context)
        val5.fact = "Khyber Pakhtunkhwa is spread over 74,521 sq. km, and has a population of over 22 million!"
        let val6 = KPk(context: context)
        val6.fact = "The province is divided into three parts, one is composed of settled areas, the second is called FATA (Federally Administered Tribal Areas), the third is PATA (Provincially Administered Tribal Areas)."
        let val7 = KPk(context: context)
        val7.fact = "The province originally known as the North-West Frontier Province but was renamed Khyber Pakhtunkhwa in 2010."
        let val8 = KPk(context: context)
        val8.fact = "The literacy rate of this region was recorded in 2012 to be 60.9%"
        let val9 = KPk(context: context)
        val9.fact = "Due to the invasion of Afghanistan by the Soviets, Peshawar provided 3 million Afghan refugees with shelter."
        ad.saveContext()
    }
    func FetchDataKPK()
    {
        let fetchRequest : NSFetchRequest<KPk> = KPk.fetchRequest()
        do
        {
            self.KPK = try context.fetch(fetchRequest)

        }
        catch
        {
        }
        for values in KPK
        {
            self.kpkInfo.append(values.fact!)
        }
    }
    
}
