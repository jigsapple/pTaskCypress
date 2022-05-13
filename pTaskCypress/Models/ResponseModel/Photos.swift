//
//  Photos.swift
//  pTaskCypress
//
//  Created by Mehul on 12/05/22.
//

import Foundation

struct Photos: Decodable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}
