//
//  AlbumApiRepository.swift
//  pTaskCypress
//
//  Created by Mehul on 12/05/22.
//

import Foundation
import CoreData

struct AlbumApiRepository : AlbumApiResourceRepository {
    
    func getPhotosRecords(completionHandler: @escaping (Array<Photos>?) -> Void) {
        URLSession.shared.dataTask(with: ApiResource.photoResource) { (data, response, error) in
            if(error == nil && data != nil) {
                do {
                    // deocding the response
                    let result = try JSONDecoder().decode([Photos].self, from: data!)
                    if(result.count > 0 ) {
                        completionHandler(result) // sending decoded response back
                    }else{
                        debugPrint("error in response, please contact codecat15")
                    }

                } catch let error {
                    debugPrint(error)
                }
            }

        }.resume()
    }
    

    func getAlbumRecords(completionHandler: @escaping (Array<Album>?) -> Void) {

        URLSession.shared.dataTask(with: ApiResource.albumsResource) { (data, response, error) in
            if(error == nil && data != nil) {
                do {
                    // deocding the response
                    let result = try JSONDecoder().decode([Album].self, from: data!)
                    if(result.count > 0 ) {
                        completionHandler(result) // sending decoded response back
                    }else{
                        debugPrint("error in response, please contact codecat15")
                    }

                } catch let error {
                    debugPrint(error)
                }
            }

        }.resume()
    }
}
