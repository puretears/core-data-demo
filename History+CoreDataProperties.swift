//
//  History+CoreDataProperties.swift
//  CoreDataDemo-III
//
//  Created by Mars on 2020/2/7.
//  Copyright © 2020 Mars. All rights reserved.
//
//

import Foundation
import CoreData


extension History {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<History> {
        return NSFetchRequest<History>(entityName: "History")
    }

    @NSManaged public var episodeId: Int64
    @NSManaged public var id: Int64
    @NSManaged public var progress: Int64
    @NSManaged public var updatedAt: Date?
    @NSManaged public var ofEpisode: Episode?

}
