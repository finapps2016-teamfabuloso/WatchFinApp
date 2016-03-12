//
//  MovementsVC.swift
//  GlobalPaymentsWatchApp
//
//  Created by Raul Valencia on 3/11/16.
//  Copyright © 2016 Fabulosos. All rights reserved.
//

import Foundation
import WatchKit

class MovementsVC: WKInterfaceController
{
    @IBOutlet var oprTable: WKInterfaceTable!
    var moves = Moves.allMoves()
    var selectedIndex = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        oprTable.setNumberOfRows(moves.count, withRowType: "MoveRow")
        
        for index in 0..<oprTable.numberOfRows {
            if let controller = oprTable.rowControllerAtIndex(index) as? MoveRow {
                controller.moves = moves[index]
            }
        }
    }
    
    override func didAppear() {
        super.didAppear()
        // 1
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
//        let moves = moves[rowIndex]
//        let controllers = moves.checkedIn ? ["Flight", "BoardingPass"] : ["Flight", "CheckIn"]
//        selectedIndex = rowIndex
//        presentControllerWithNames(controllers, contexts:[flight, flight])
    }
    
}