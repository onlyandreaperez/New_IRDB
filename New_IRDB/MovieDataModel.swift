//
//  MovieDataModel.swift
//  New_IRDB
//
//  Created by Andrea Perez on 3/24/19.
//  Copyright © 2019 Andrea Perez. All rights reserved.
//

import UIKit

class MovieDataModel: Codable {

    var franchise: [Franchises]
}

class Franchises: Codable {
    let franchiseName: String
    let entries: [Entry]
}

class Entry: Codable {
    let name: String
    let format: String
    let yearStart: String
    let yearEnd: String?
    let episodes: Int?
    let studio: String?
    let imageURL: String
    let description: String
    let summary: String
}


