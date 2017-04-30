//
//  Baloch+CoreDataProperties.swift
//  MyCountryFacts
//
//  Created by Junaid Khan on 26/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import CoreData


extension Baloch {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Baloch> {
        return NSFetchRequest<Baloch>(entityName: "Baloch");
    }

    @NSManaged public var fact: String?

}
