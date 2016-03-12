//
//  ProductDetailsVC.swift
//  GlobalPaymentsWatchApp
//
//  Created by Raul Valencia on 3/11/16.
//  Copyright © 2016 Fabulosos. All rights reserved.
//

import Foundation
import WatchKit

class ProductDetailsVC: WKInterfaceController
{
    @IBOutlet var nameLbl: WKInterfaceLabel!
    @IBOutlet var imageLbl: WKInterfaceImage!
    @IBOutlet var priceLbl: WKInterfaceLabel!
    
    var shouldDismiss = false;
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        nameLbl.setText("GP Journal")
//        imageLbl.setImage(UIImage(named: "Bitcoin"))
        priceLbl.setText("10")
    }
    
    override func didAppear() {
        NSLog("Did appear")
        if (shouldDismiss)
        {
            self.dismissController()
        }
        else
        {
            shouldDismiss = true
        }
        
    }
    
    @IBAction func actionBuy()
    {
        
    }
}

