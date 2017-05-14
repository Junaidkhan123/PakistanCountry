//
//  DetailVC.swift
//  MyCountryFacts
//
//  Created by Junaid Khan on 26/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit
import CoreData
class DetailVC: UIViewController {
    
    @IBOutlet weak var detialView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var detailLabel: UILabel!
    var info =  InformationClass()
    var x = 0
    override func viewDidLoad() {
        if x == 0
        {
            prevButton.isHidden = true
        }
        
        super.viewDidLoad()
        do
        {
            let fetcRequest : NSFetchRequest<Pakistan> = Pakistan.fetchRequest()
            let fetchRequestKPk : NSFetchRequest<KPk> = KPk.fetchRequest()
            let count = try context.count(for: fetcRequest )
            let countKPk = try context.count(for: fetchRequestKPk)
            
            if (count == 0 && countKPk == 0)
            {
                self.info.generateData()
                self.info.generateDataKPK()
                
            }
            if self.info.pakInfo1.count == 0
            {
                self.info.FetchData()
                self.info.FetchDataKPK()
                
            }
            print(self.info.pakInfo1)
            print(self.info.pakInfo1.count)
            print(self.info.kpkInfo)
            print(self.info.kpkInfo.count)
        }
        catch
        {
            print("error")
        }
        if globalValue == 0
        {
            //detailLabel.text = info.pakInfo1[x]
        }
        else if globalValue == 1
        {
            //detailLabel.text = info.kpkInfo[x]
        }
        else if globalValue == 2
        {
            //detailLabel.text = info.pakInfo1[x]
        }
        else if globalValue == 3
        {
            //detailLabel.text = info.pakInfo1[x]
        }
        else if globalValue == 4
        {
            //detailLabel.text = info.pakInfo1[x]
        }
        else if globalValue == 5
        {
            //detailLabel.text = info.pakInfo1[x]
        }
        
        if let topItem = self.navigationController?.navigationBar.topItem
        {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
    }

    func getRandomColor() -> UIColor
    {
        let getRed = CGFloat(drand48()) 
        let getGreen = CGFloat(drand48())
        let getBlue = CGFloat(drand48())
        return UIColor(red: getRed, green: getGreen, blue: getBlue, alpha: 0.7)
    }
 
    @IBAction func prevPressed(_ sender: Any) {
        detialView.backgroundColor = getRandomColor()
       if globalValue == 0
       {
        
        if x < info.pakInfo1.count && x > 0
        {
            detailLabel.text = info.pakInfo1[x-1]
            nextButton.isHidden = false
            x -= 1
        }
        if x == 0
        {
            prevButton.isHidden = true
            x += 1
            
        }
        }
        if globalValue == 1
        {
            
            if x < info.kpkInfo.count && x > 0
            {
                detailLabel.text = info.kpkInfo[x-1]
                nextButton.isHidden = false
                x -= 1
            }
            if x == 0
            {
                prevButton.isHidden = true
                x += 1
                
            }
        }
     
   
    }

    @IBAction func nextPressed(_ sender: Any) {
        detialView.backgroundColor = getRandomColor()
        if globalValue == 0
        {
            prevButton.isHidden = false;
            
            if x < info.pakInfo1.count
            {
                
                    detailLabel?.text = info.pakInfo1[x]
                    x = x + 1 ;
            }
            if x == info.pakInfo1.count         {
                nextButton.isHidden = true
                x = x - 1 ;
            }
        }
        else if globalValue == 1
        {
            prevButton.isHidden = false;
            
            if x < info.kpkInfo.count
            {
                
                detailLabel?.text = info.kpkInfo[x]
                x = x + 1 ;
            }
            if x == info.kpkInfo.count         {
                nextButton.isHidden = true
                x = x - 1 ;
            }
            
        }
        
        }

    }

    

