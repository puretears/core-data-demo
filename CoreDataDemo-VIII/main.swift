//
//  main.swift
//  CoreDataDemo-I
//
//  Created by Mars on 2020/2/6.
//  Copyright © 2020 Mars. All rights reserved.
//
import CoreData
import Foundation

/// `NSManagedObjectContext`
let managedContext = CoreDataManager.shared.managedContext

buildSeriesEpisodeAndHistory()

dispatchMain()

