//
//  Child4.swift
//  ProgrammaticPageControl
//
//  Created by Sayyid Maulana Khakul Y on 11/02/20.
//  Copyright © 2020 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class Child4: UIViewController, IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "My Child title 4")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ColorTheme.lightGrayGoalkes
    }
}
