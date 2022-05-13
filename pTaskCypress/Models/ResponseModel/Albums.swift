//
//  Albums.swift
//  pTaskCypress
//
//  Created by Mehul on 12/05/22.
//

import Foundation

struct Album: Decodable {
    let id: Int
    let userId: Int
    let title: String
}
