//
//  CDPhoto+CoreDataProperties.swift
//  pTaskCypress
//
//  Created by Mehul on 13/05/22.
//
//

import Foundation
import CoreData


extension CDPhoto {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDPhoto> {
        return NSFetchRequest<CDPhoto>(entityName: "CDPhoto")
    }

    @NSManaged public var id: Int16
    @NSManaged public var albumId: Int16
    @NSManaged public var title: String?
    @NSManaged public var url: String?
    @NSManaged public var thumbnailUrl: String?
    @NSManaged public var toAlbum: CDPhoto?

}

extension CDPhoto : Identifiable {

}
