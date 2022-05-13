//
//  CDAlbum+CoreDataProperties.swift
//  pTaskCypress
//
//  Created by Mehul on 13/05/22.
//
//

import Foundation
import CoreData


extension CDAlbum {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDAlbum> {
        return NSFetchRequest<CDAlbum>(entityName: "CDAlbum")
    }

    @NSManaged public var id: Int16
    @NSManaged public var userId: Int16
    @NSManaged public var title: String?
    @NSManaged public var toPhotos: NSSet?

}

// MARK: Generated accessors for toPhotos
extension CDAlbum {

    @objc(addToPhotosObject:)
    @NSManaged public func addToToPhotos(_ value: CDAlbum)

    @objc(removeToPhotosObject:)
    @NSManaged public func removeFromToPhotos(_ value: CDAlbum)

    @objc(addToPhotos:)
    @NSManaged public func addToToPhotos(_ values: NSSet)

    @objc(removeToPhotos:)
    @NSManaged public func removeFromToPhotos(_ values: NSSet)

}

extension CDAlbum : Identifiable {

}
