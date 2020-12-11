//
//  MediaDataModel.swift
//  Final_Project_Will_Stanley
//
//  Created by William Stanley on 11/21/20.
//

import UIKit

class MediaDataModel: Codable {
    
    var franchise: [Franchise]
}

class Franchise: Codable {
    let typeofRestaurant: String
    let entries: [Entry]
}

class Entry: Codable {
    let name: String
    let location: String
    let foodType: String
    let webLink: String
    let imageURL: String
    let rating: String
    let hoursOpen: String
}
