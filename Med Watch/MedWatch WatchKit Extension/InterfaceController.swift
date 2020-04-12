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

    @IBOutlet var takeMedsButton: WKInterfaceButton!
    @IBOutlet var heartRateButton: WKInterfaceButton!
    
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
    
    @IBAction func takeMedsTapped() {
        tookMeds = !tookMeds
        if (tookMeds) {
            takeMedsButton.setTitle("Took Meds")
        } else {
            takeMedsButton.setTitle("Take Meds")
        }
            
    }
    
    @IBAction func heartRateTapped() {
        self.presentTextInputController(withSuggestions: nil, allowedInputMode: .plain, completion: {results in
            guard let results = results else { return }
            OperationQueue.main.addOperation {
                self.dismissTextInputController()
                self.setTitle(results[0] as? String)
            }
        
       })
    }
 
}
