//
//  WelcomeController.swift
//  ProgrammaticPageControl
//
//  Created by Sayyid Maulana Khakul Yakin on 19/02/21.
//  Copyright © 2021 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
    
    fileprivate let button: UIButton = {
        let button = UIButton()
        button.setTitle("Tutup", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        view.addSubview(button)
        button.setAnchor(top: nil, left: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.trailingAnchor, paddingTop: 0, paddingLeft: 50, paddingBottom: 50, paddingRight: 50, width: 0, height: 40)
    }
    
    @objc func clicked() {
        Switcher.updateRootVC()
        UserDefaults.standard.set(true, forKey: "newUser")
    }
    
}

import SwiftUI

@available(iOS 13.0, *)
struct WelcomePreview: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeController().toPreview()
        }
    }
}
