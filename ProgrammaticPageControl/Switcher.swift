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
        
//        let status = UserDefaults.standard.bool(forKey: "statusRoot")
        var rootVC : UIViewController?
       
//            print(status)

//        if(status == true){
                rootVC = HomeTabBarController()
//        } else {
//
//        }
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.window?.rootViewController = rootVC
    }
    
}
