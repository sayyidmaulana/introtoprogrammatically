//
//  Utilities.swift
//  ProgrammaticPageControl
//
//  Created by Sayyid Maulana Khakul Y on 07/04/20.
//  Copyright © 2020 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class Utilities {

    static func showToast(controller: UIViewController, message : String, seconds: Double){
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.view.backgroundColor = ColorTheme.darkWhite
        alert.view.alpha = 0.7
        alert.view.layer.cornerRadius = 10
        
        controller.present(alert, animated: true)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds) {
            alert.dismiss(animated: true)
        }
    }

    static func shadow (controller: UIViewController, yourView : UIView){
        yourView.layer.shadowOpacity = 0.3
        yourView.layer.shadowOffset = CGSize(width: 1, height: 1)
        yourView.layer.shadowRadius = 3.0
        yourView.layer.shadowColor = UIColor.darkGray.cgColor
    }

}
