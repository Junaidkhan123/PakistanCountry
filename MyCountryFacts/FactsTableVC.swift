//
//  FactsTableVC.swift
//  MyCountryFacts
//
//  Created by Junaid Khan on 26/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit
import CoreData
var globalValue : Int = 0 ;
class FactsTableVC: UITableViewController {
    var info = InformationClass()
    var provinceNames = [String]()
    var objectArray = [InformationClass]()
    override func viewDidLoad() {
        super.viewDidLoad()
        provinceNames = ["Pakistan","Khyber PakhtunKhwa","Punjab","Gilgit Baltistan","Sindh","Balochistan"];
        
        
          
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
                return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return provinceNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProvinceCell", for: indexPath) as! ProvinceCell
        cell.provinceLabel.text = provinceNames[indexPath.row]
        cell.provinceBackGroundThumb.image = UIImage(named: provinceNames[indexPath.row])
        let newString = provinceNames[indexPath.row]
        let myobject = InformationClass(mainlabel: newString);
        objectArray.append(myobject)
        return cell;
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let passingInfo : InformationClass!
        passingInfo = objectArray[indexPath.row]
        globalValue = indexPath.row
        performSegue(withIdentifier: "DetailVC", sender: passingInfo!)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailVC"
        {
            if let detailvc = segue.destination as? DetailVC
            {
                if let sender = sender as? InformationClass
                {
                    detailvc.info = sender
                }
            }
        }
    }
}
