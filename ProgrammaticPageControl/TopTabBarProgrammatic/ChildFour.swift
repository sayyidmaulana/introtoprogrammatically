//
//  ChildFour.swift
//  ProgrammaticPageControl
//
//  Created by Sayyid Maulana Khakul Y on 11/02/20.
//  Copyright © 2020 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ChildFour: UIViewController, IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "My Child title Four")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ColorTheme.succsessGoalkes
    }
}
