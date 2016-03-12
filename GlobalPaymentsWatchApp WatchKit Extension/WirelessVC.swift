//
//  WirelessVC.swift
//  GlobalPaymentsWatchApp
//
//  Created by Raul Valencia on 3/11/16.
//  Copyright © 2016 Fabulosos. All rights reserved.
//

import Foundation
import WatchKit

class WirelessVC: WKInterfaceController
{
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }
    
    override func didAppear() {
        super.didAppear()
    }
    
    @IBAction func actionShowProperties()
    {
        NSLog("Dir itt");
//        presentControllerWithName("ProductDetailsVC", context: nil)
    }
}