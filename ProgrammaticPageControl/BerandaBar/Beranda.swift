//
//  Keranjang.swift
//  ProgrammaticPageControl
//
//  Created by sayyid maulana khakul yakin on 24/12/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class Beranda: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    
    lazy var searchNavBar: UISearchBar = {
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
        searchBar.placeholder = "Cari"
        return searchBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(FirstCell.self, forCellWithReuseIdentifier: "first")
        collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
        
        let btnWallet = UIBarButtonItem(image: #imageLiteral(resourceName: "saldo"), style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        let btnWish =  UIBarButtonItem(image: #imageLiteral(resourceName: "keinginan"), style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        let btnNotif = UIBarButtonItem(image: #imageLiteral(resourceName: "notifikasi"), style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        
//        let searchNavBar = UISearchController(searchResultsController: nil)
        
//        navigationItem.searchController = searchNavBar
        navigationItem.leftBarButtonItem = btnWallet
        navigationItem.rightBarButtonItems = [btnNotif, btnWish]
        
        navigationController?.navigationBar.tintColor = ColorTheme.redGoalkes
        
//        var leftNavBarButton = UIBarButtonItem(customView:searchNavBar)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let firstCell = collectionView.dequeueReusableCell(withReuseIdentifier: "first", for: indexPath) as! FirstCell
        return firstCell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 200)
//        return CGSize(width: (view.frame.width - 16 * 4) / 3, height: 100)
    }
}
