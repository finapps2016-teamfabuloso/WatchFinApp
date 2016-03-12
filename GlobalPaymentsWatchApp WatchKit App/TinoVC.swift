//
//  TinoVC.swift
//  GlobalPaymentsWatchApp
//
//  Created by Raul Valencia on 3/11/16.
//  Copyright © 2016 Fabulosos. All rights reserved.
//

import Foundation
import WatchKit

class TinoVC: WKInterfaceController
{
    @IBOutlet var bitcoinLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        bitcoinLabel.setText("100")
    }
    
    override func didAppear() {
        super.didAppear()
    }

    @IBAction func actionShowWireless()
    {
        presentControllerWithName("WirelessVC", context: nil);
    }
    
    @IBAction func actionShowMovements()
    {
        presentControllerWithName("MovementsVC", context: nil)
    }
}