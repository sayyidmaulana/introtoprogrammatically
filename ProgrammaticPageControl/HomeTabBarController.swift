//
//  HomeTabBarController.swift
//  ProgrammaticPageControl
//
//  Created by sayyid maulana khakul yakin on 21/12/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class HomeTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = Beranda(collectionViewLayout: UICollectionViewFlowLayout())
        let swipingController = UINavigationController(rootViewController: layout)
        swipingController.title = "Beranda"
        swipingController.tabBarItem.image = #imageLiteral(resourceName: "ic_home")
        
        let secondLayout = SwipingController(collectionViewLayout: UICollectionViewFlowLayout())
        let secondController = UINavigationController(rootViewController: secondLayout)
        secondController.title = "Keranjang"
        secondController.tabBarItem.image = UIImage(named: "keranjang")
        
        let thirdLayout = Pesan(collectionViewLayout: UICollectionViewFlowLayout())
        let thirdController = UINavigationController(rootViewController: thirdLayout)
        thirdController.title =  "Pesan"
        thirdController.tabBarItem.image = #imageLiteral(resourceName: "pesan")
        
        let forthLayout = UIViewController()
        let forthController = UINavigationController(rootViewController: forthLayout)
        forthController.title = "Transaksi"
        forthController.tabBarItem.image = #imageLiteral(resourceName: "transaksi")
        
        let fifthLayout = UIViewController()
        let fifthController = UINavigationController(rootViewController: fifthLayout)
        fifthController.title = "Masuk"
        fifthController.tabBarItem.image = #imageLiteral(resourceName: "masuk")
        
        viewControllers = [swipingController, secondController, thirdController, forthController, fifthController]
        
        tabBar.isTranslucent = false
    }
}
