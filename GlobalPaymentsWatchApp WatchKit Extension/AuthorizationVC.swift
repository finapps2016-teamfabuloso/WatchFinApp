//
//  AuthorizationVC.swift
//  GlobalPaymentsWatchApp
//
//  Created by Raul Valencia on 3/12/16.
//  Copyright © 2016 Fabulosos. All rights reserved.
//

import Foundation
import WatchKit

class AuthorizationVC: WKInterfaceController
{
    @IBOutlet var backgroundGroup: WKInterfaceGroup!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        let duration = 1.0
        let delay = dispatch_time(DISPATCH_TIME_NOW, Int64((duration + 0.15) * Double(NSEC_PER_SEC)))
        backgroundGroup.setBackgroundImageNamed("Progress")
        backgroundGroup.startAnimatingWithImagesInRange(NSRange(location: 0, length: 10), duration: duration, repeatCount: 1)
        dispatch_after(delay, dispatch_get_main_queue()) { () -> Void in
            
            self.dismissController()
        }
    }
}
