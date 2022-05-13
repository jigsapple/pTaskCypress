//
//  albumsRepository.swift
//  pTaskCypress
//
//  Created by Mehul on 12/05/22.
//

import Foundation

protocol AlbumBaseRepository {
    func getAlbumRecords(completionHandler:@escaping(_ result: Array<Album>?)->Void)
    func getPhotosRecords(completionHandler:@escaping(_ result: Array<Photos>?)->Void)
}

protocol AlbumCoreDataRepository : AlbumBaseRepository {
    func insertAlbumRecords(records:Array<Album>) -> Bool
    func batchInsertAlbumRecords(records:Array<Album>) -> Bool
}

protocol AlbumApiResourceRepository : AlbumBaseRepository {
}
