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
    var displayDetails = false
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }
    
    override func didAppear() {
        super.didAppear()
        
        if (!displayDetails)
        {
        let duration = 0.30
        let delay = dispatch_time(DISPATCH_TIME_NOW, Int64((duration + 0.15) * Double(NSEC_PER_SEC)))
        dispatch_after(delay, dispatch_get_main_queue()) { () -> Void in
            self.presentControllerWithName("ProductDetailsVC", context: nil)
            }
            displayDetails = true;
        }
    }
    
}