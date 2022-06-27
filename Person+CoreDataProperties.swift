//
//  Person+CoreDataProperties.swift
//  DataBase
//
//  Created by Tarun Sharma on 27/06/22.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var email: String?
    @NSManaged public var age: Int16

}

extension Person : Identifiable {

}
