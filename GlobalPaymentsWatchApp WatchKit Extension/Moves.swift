//
//  Moves.swift
//  GlobalPaymentsWatchApp
//
//  Created by Raul Valencia on 3/11/16.
//  Copyright © 2016 Fabulosos. All rights reserved.
//

import Foundation
import WatchKit

class Moves {
    
    let name: String
    let price: String
    let id: String
    let date: String
    
    class func allMoves() -> [Moves]
    {
        var moves = [Moves]()
        let formatter = NSDateFormatter()
        formatter.dateFormat = "HH:mm"
        if let path = NSBundle.mainBundle().pathForResource("Moves", ofType: "json"), let data = NSData(contentsOfFile: path) {
            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments) as! [Dictionary<String, String>]
                for dict in json {
                    let flight = Moves(dictionary: dict, formatter: formatter)
                    moves.append(flight)
                }
            } catch {
                print(error)
            }
        }
        return moves
    }
    
    init(name: String, price: String, id: String, date: String) {
        self.name = name
        self.price = price
        self.id = id
        self.date = date
    }
    
    convenience init(dictionary: [String: String], formatter: NSDateFormatter) {
        let name = dictionary["name"]!
        let price = dictionary["price"]!
        let id = dictionary["id"]!
        let date = dictionary["date"]!
        self.init(name: name, price: price, id: id, date: date)
    }
    
    
}