//
//  Punjab+CoreDataProperties.swift
//  MyCountryFacts
//
//  Created by Junaid Khan on 26/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import CoreData


extension Punjab {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Punjab> {
        return NSFetchRequest<Punjab>(entityName: "Punjab");
    }

    @NSManaged public var fact: String?

}
