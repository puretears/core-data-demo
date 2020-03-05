//
//  Episode+CoreDataProperties.swift
//  CoreDataDemo-III
//
//  Created by Mars on 2020/2/7.
//  Copyright © 2020 Mars. All rights reserved.
//
//

import Foundation
import CoreData


extension Episode {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Episode> {
        return NSFetchRequest<Episode>(entityName: "Episode")
    }

    @NSManaged public var id: Int64
    @NSManaged public var seriesId: Int64
    @NSManaged public var summary: String?
    @NSManaged public var title: String?
    @NSManaged public var history: History?
    @NSManaged public var ofSeries: Series?

}
