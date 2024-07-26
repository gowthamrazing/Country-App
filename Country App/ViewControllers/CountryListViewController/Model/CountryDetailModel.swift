//
//  CountryDetailModel.swift
//  Country App
//
//  Created by Senthilkumar Kalaiselvan on 25/7/24.
//

import Foundation

import Foundation

struct CountryDetailModel: Decodable {
    
    let name: String
    let capital: String
    let currency: String
    var population: Int32?
    let media: MediaModel
    
    struct MediaModel: Decodable {
        let flag: String
    }
}
