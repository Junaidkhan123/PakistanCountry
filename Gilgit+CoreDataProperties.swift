//
//  Gilgit+CoreDataProperties.swift
//  MyCountryFacts
//
//  Created by Junaid Khan on 26/04/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import CoreData


extension Gilgit {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Gilgit> {
        return NSFetchRequest<Gilgit>(entityName: "Gilgit");
    }

    @NSManaged public var fact: String?

}
