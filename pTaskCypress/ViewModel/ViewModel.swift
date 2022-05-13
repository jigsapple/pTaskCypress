//
//  ViewModel.swift
//  pTaskCypress
//
//  Created by Mehul on 12/05/22.
//

import Foundation

struct AlbumViewModel {
    
    private let _albumApiRepository: AlbumApiResourceRepository = AlbumApiRepository()
    
    func getAllRecords(completionHandler:@escaping(_ result: Array<Album>?)-> Void) {
        
        // call the api
        _albumApiRepository.getAlbumRecords { albumResponse in
            if(albumResponse != nil && albumResponse?.count != 0){
                // call the api
                _albumApiRepository.getPhotosRecords { photoResponse in
                    completionHandler(albumResponse)
                    debugPrint("got all data")
                }
            }
        }
    }
}
