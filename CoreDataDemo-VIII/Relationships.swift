//
//  Relationships.swift
//  CoreDataDemo-IV
//
//  Created by Mars on 2020/2/7.
//  Copyright © 2020 Mars. All rights reserved.
//
import CoreData
import Foundation

func buildSeriesEpisodeAndHistory() {
  let series = Series(context: managedContext)
  series.id = 1
  series.title = "Series title"
  series.summary = "Series summary"
  
  let episode1 = Episode(context: managedContext)
  episode1.id = 1
  episode1.seriesId = 1
  episode1.title = "Core data relationship I"
  episode1.summary = "Build core data relationships by code I."
  episode1.ofSeries = series
  
  let episode2 = Episode(context: managedContext)
  episode2.id = 2
  episode2.seriesId = 1
  episode2.title = "Core data relationship II"
  episode2.summary = "Build core data relationships by code II."
  episode2.ofSeries = series
  
  let ctx = CoreDataManager.shared.backgroundContext
  ctx.performAndWait {
    let episode3 = Episode(context: ctx)
    episode3.id = 3
    episode3.seriesId = 1
    episode3.title = "Core data relationship III"
    episode3.summary = "Build core data relationships by code III."
    let id = series.objectID
    episode3.ofSeries = ctx.object(with: id) as? Series
    
    print("Episode in ctx: \(count("Episode", moc: ctx))") // 3
    print("Episode in main: \(count("Episode", moc: managedContext))") // 2
    
    try? ctx.save()
    print("Episode in main: \(count("Episode", moc: managedContext))") // 3
  }
  
}

func count(_ entityName: String, moc: NSManagedObjectContext) -> Int {
  let fetchRequest = NSFetchRequest<NSNumber>(entityName: entityName)
  fetchRequest.resultType = .countResultType
  
  let results = try? moc.fetch(fetchRequest)
  
  guard let r = results else { return 0 }

  return Int(truncating: r[0])
}
