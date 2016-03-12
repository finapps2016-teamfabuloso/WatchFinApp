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
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        nameLbl.setText("Texto")
        imageLbl.setImage(UIImage(named: "Bitcoin"))
        priceLbl.setText("150")
    }
    
    @IBAction func actionBuy()
    {
        pushControllerWithName("MovementsVC", context: nil)
    }
}

