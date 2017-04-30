//
//  Sindh+CoreDataProperties.swift
//  MyCountryFacts
//
//  Created by Junaid Khan on 26/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import CoreData


extension Sindh {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Sindh> {
        return NSFetchRequest<Sindh>(entityName: "Sindh");
    }

    @NSManaged public var fact: String?

}
