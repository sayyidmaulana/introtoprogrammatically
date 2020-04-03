//
//  TopTabBarMain.swift
//  ProgrammaticPageControl
//
//  Created by Sayyid Maulana Khakul Y on 11/02/20.
//  Copyright © 2020 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TopTabBarMain: ButtonBarPagerTabStripViewController {
    let purpleInspireColor = UIColor(red:0.13, green:0.03, blue:0.25, alpha:1.0)

    override func viewDidLoad() {
        super.viewDidLoad()
                // change selected bar color
                settings.style.buttonBarBackgroundColor = .white
                settings.style.buttonBarItemBackgroundColor = .white
                settings.style.selectedBarBackgroundColor = purpleInspireColor
                settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
                settings.style.selectedBarHeight = 2.0
                settings.style.buttonBarMinimumLineSpacing = 0
                settings.style.buttonBarItemTitleColor = .black
                settings.style.buttonBarItemsShouldFillAvailableWidth = true
                settings.style.buttonBarLeftContentInset = 0
                settings.style.buttonBarRightContentInset = 0
                settings.style.buttonBarItemLeftRightMargin = 0

                changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
                guard changeCurrentIndex == true else { return }
                oldCell?.label.textColor = .black
                   newCell?.label.textColor = self?.purpleInspireColor
               }
                view.backgroundColor = .white
                 //get rod of containerView offset
                edgesForExtendedLayout = []
                buttonBarView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
                
           }
           override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
            return [ChildOne(), ChildTwo(), ChildThree(), ChildFour(), ChildFive()]
    }
}
