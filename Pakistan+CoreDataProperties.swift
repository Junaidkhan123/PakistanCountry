//
//  Pakistan+CoreDataProperties.swift
//  MyCountryFacts
//
//  Created by Junaid Khan on 26/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import CoreData


extension Pakistan {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pakistan> {
        return NSFetchRequest<Pakistan>(entityName: "Pakistan");
    }

    @NSManaged public var fact: String?

}
