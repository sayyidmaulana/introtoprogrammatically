//
//  Pesan.swift
//  ProgrammaticPageControl
//
//  Created by sayyid maulana khakul yakin on 24/12/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class Pesan: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
        
        let btnLeft = UIBarButtonItem(image: #imageLiteral(resourceName: "saldo"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(movePage))
        
        navigationItem.leftBarButtonItem = btnLeft
        
        navigationController?.navigationBar.tintColor = ColorTheme.redGoalkes
        navigationItem.title = "Pesan"
        
        
        
    }
    @objc func movePage() {
        let topBar = TopTabBarMain()
        topBar.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(topBar, animated: true)

        //get rod of containerView offset
        edgesForExtendedLayout = []
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
}
