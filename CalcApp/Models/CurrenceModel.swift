//
//  CurrenceModel.swift
//  CalcApp
//
//  Created by sher on 12/6/22.
//

import Foundation

struct Info: Decodable {
    var rate: Double?
    var timestamp: Double?
}

struct Query: Decodable {
    var amount: Int?
    var from: String?
    var to: String?
}


struct Currence: Decodable {
    var date: String?
    var info: Info?
    var result: Double?
    var query: Query?
    var success: Bool?
}
