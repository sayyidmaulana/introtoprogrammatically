//
//  FirstController.swift
//  ProgrammaticPageControl
//
//  Created by Sayyid Maulana Khakul Yakin on 18/02/21.
//  Copyright © 2021 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class FirstController: UIViewController {
    
    fileprivate let label: UILabel = {
        let label = UILabel()
        label.text = "Welcome !"
        label.textColor = .black
        return label
    }()
    
    fileprivate let buttonClose: UIButton = {
        let button = UIButton()
        button.setTitle("Close", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setImage(#imageLiteral(resourceName: "tutup"), for: .normal)
        button.tintColor = .white
        button.semanticContentAttribute = .forceLeftToRight
        button.backgroundColor = .red
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(closed), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
    }
    
    private func setupView() {
        view.addSubview(buttonClose)
        buttonClose.setAnchor(top: nil, left: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.trailingAnchor, paddingTop: 0, paddingLeft: 30, paddingBottom: 30, paddingRight: 30, width: 0, height: 40)
        
        view.addSubview(label)
        label.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leadingAnchor, bottom: nil, right: view.trailingAnchor, paddingTop: 70, paddingLeft: 50, paddingBottom: 0, paddingRight: 50, width: 0, height: 0)
    }
    
    @objc func closed() {
        Switcher.updateRootVC()
        UserDefaults.standard.set(true, forKey: "newUser")
        UserDefaults.standard.synchronize()
    }
    
}

import SwiftUI

@available(iOS 13.0, *)
struct MonitoringPreviews: PreviewProvider {
    static var previews: some View {
        Group {
            FirstController().toPreview()
        }
    }
}
