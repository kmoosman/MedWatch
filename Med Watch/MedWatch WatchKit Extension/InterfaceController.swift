//
//  InterfaceController.swift
//  MedWatch WatchKit Extension
//
//  Created by Katie Moosman on 4/12/20.
//  Copyright © 2020 Katie Moosman. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var myButton: WKInterfaceButton!
    var tookMeds = false
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func buttonTapped() {
        tookMeds = !tookMeds
        if (tookMeds) {
            myButton.setTitle("Took Meds")
        } else {
            myButton.setTitle("Take Meds")
        }
            
            
    }

}
