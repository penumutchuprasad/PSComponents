//
//  ViewController.swift
//  Example
//
//  Created by penumutchu.prasad@gmail.com on 14/05/18.
//  Copyright © 2018 abnboys. All rights reserved.
//

import UIKit
import PSComponents


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    
    @IBAction func onNotification(_ sender: UIButton) {
        
        
        presentAlert(withTitle: "Example Alert", message: "It is from POD", actionTitles: ["OK" : .default, "Cancel": .destructive]) { (title) -> (Any?) in
            self.onAlertActions(With: title)
        }
        
        
    }
    
    
    func onAlertActions(With title: String) {
        
        print("\(title) action has been pressed")
    }
 
    
    
}

