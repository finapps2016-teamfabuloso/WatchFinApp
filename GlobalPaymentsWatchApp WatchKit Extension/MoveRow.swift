//
//  MoveRow.swift
//  GlobalPaymentsWatchApp
//
//  Created by Raul Valencia on 3/11/16.
//  Copyright © 2016 Fabulosos. All rights reserved.
//

import Foundation
import WatchKit

class MoveRow: NSObject {
    
    @IBOutlet var nameLabel: WKInterfaceLabel!
    @IBOutlet var priceLabel: WKInterfaceLabel!
    
    // 1
    var moves: Moves? {
        // 2
        didSet {
            // 3
            if let move = moves {
                // 4
                nameLabel.setText(move.name)
                priceLabel.setText(move.price)
            }
        }
    }
}
