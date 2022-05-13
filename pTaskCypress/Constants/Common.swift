//
//  Common.swift
//  pTaskCypress
//
//  Created by Mehul on 12/05/22.
//

import Foundation

struct ApiResource {
    static let albumsResource : URL = URL(string: "https://jsonplaceholder.typicode.com/albums")!
    static let photoResource: URL = URL(string: "https://jsonplaceholder.typicode.com/photos")!
}

struct Constants {
    static let MAX_VALUE = 10000
}
