//
//  Extensions+.swift
//  PSComponents
//
//  Created by penumutchu.prasad@gmail.com on 14/05/18.
//  Copyright © 2018 abnboys. All rights reserved.
//

import UIKit

extension UIViewController {
    
    
    public func presentAlert(withTitle title: String, message: String, actionTitles: [String: UIAlertActionStyle], completion: ((_ title: String)->(Any?))? = buttonAction ) {
        
        let alertVC = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        
        //        let actnTitles = actionTitles.reversed()
        
        for (index,action) in actionTitles.enumerated() {
            
            alertVC.addAction(UIAlertAction.init(title: action.key, style: action.value, handler: { (_) in
                
                _ = completion!(action.key)
                
            }))
            
        }
        
        defer {
            present(alertVC, animated: true, completion: nil)
        }
        
    }
    
    
    public class func buttonAction (title: String)->(Any?) {
        
        print("Extension Action is called")
        return nil
    }
    
}
