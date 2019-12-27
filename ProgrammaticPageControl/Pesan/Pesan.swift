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
        
        let btnLeft = UIBarButtonItem(image: #imageLiteral(resourceName: "arrowleft"), style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        
        navigationItem.leftBarButtonItem = btnLeft
        
        navigationController?.navigationBar.tintColor = ColorTheme.redGoalkes
        navigationItem.title = "Pesan"
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
}
