//
//  Switcher.swift
//  ProgrammaticPageControl
//
//  Created by Sayyid Maulana Khakul Y on 03/04/20.
//  Copyright © 2020 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class Switcher {
    
    static func updateRootVC(){
        
            var rootVC : UIViewController?

            rootVC = HomeTabBarController()
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.window?.rootViewController = rootVC
    }
    
}
