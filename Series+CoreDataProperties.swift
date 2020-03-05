//
//  Series+CoreDataProperties.swift
//  CoreDataDemo-III
//
//  Created by Mars on 2020/2/6.
//  Copyright © 2020 Mars. All rights reserved.
//
//

import Foundation
import CoreData


extension Series {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Series> {
        return NSFetchRequest<Series>(entityName: "Series")
    }

    @NSManaged public var id: Int64
    @NSManaged public var title: String?
    @NSManaged public var summary: String?
    @NSManaged public var episodes: NSSet?

}

// MARK: Generated accessors for episodes
extension Series {

    @objc(addEpisodesObject:)
    @NSManaged public func addToEpisodes(_ value: Episode)

    @objc(removeEpisodesObject:)
    @NSManaged public func removeFromEpisodes(_ value: Episode)

    @objc(addEpisodes:)
    @NSManaged public func addToEpisodes(_ values: NSSet)

    @objc(removeEpisodes:)
    @NSManaged public func removeFromEpisodes(_ values: NSSet)

}
