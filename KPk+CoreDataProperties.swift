//
//  KPk+CoreDataProperties.swift
//  MyCountryFacts
//
//  Created by Junaid Khan on 26/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import CoreData


extension KPk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<KPk> {
        return NSFetchRequest<KPk>(entityName: "KPk");
    }

    @NSManaged public var fact: String?

}
