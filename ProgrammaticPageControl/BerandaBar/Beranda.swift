//
//  Keranjang.swift
//  ProgrammaticPageControl
//
//  Created by sayyid maulana khakul yakin on 24/12/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class Keranjang: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btnWallet = UIBarButtonItem(image: #imageLiteral(resourceName: "saldo"), style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        let btnWish =  UIBarButtonItem(image: #imageLiteral(resourceName: "keinginan"), style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        let btnNotif = UIBarButtonItem(image: #imageLiteral(resourceName: "notifikasi"), style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        
        //        navigationItem.searchController = searchNavBar
        navigationItem.leftBarButtonItem = btnWallet
        navigationItem.rightBarButtonItems = [btnNotif, btnWish]
    
    }
}
