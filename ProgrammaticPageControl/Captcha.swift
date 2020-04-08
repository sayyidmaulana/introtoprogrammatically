//
//  Captcha.swift
//  ProgrammaticPageControl
//
//  Created by Sayyid Maulana Khakul Y on 07/04/20.
//  Copyright © 2020 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class Captcha: UIViewController {
    
    let container = UIView()
    let titleLabelCaptcha = UILabel()
    let labelCaptcha = UILabel()
    let fieldCaptcha = UITextField()
    let reloadButton = UIButton()
    let submitButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
    }
    
    func bindData() {
        setView()
        setLibrary()
    }
    
    func setView() {
        view.backgroundColor = .clear
        view.addSubview(container)
        view.addSubview(titleLabelCaptcha)
        view.addSubview(labelCaptcha)
        view.addSubview(fieldCaptcha)
        view.addSubview(reloadButton)
        view.addSubview(submitButton)
        container.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leadingAnchor, bottom: view.bottomAnchor, right: view.trailingAnchor, paddingTop: 100, paddingLeft: 25, paddingBottom: 500, paddingRight: 25, width: 0, height: 0)
        titleLabelCaptcha.setAnchor(top: container.topAnchor, left: container.leadingAnchor, bottom: nil, right: container.trailingAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 0)
        labelCaptcha.setAnchor(top: titleLabelCaptcha.bottomAnchor, left: container.leadingAnchor, bottom: nil, right: container.trailingAnchor, paddingTop: 10, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 0)
        fieldCaptcha.setAnchor(top: labelCaptcha.bottomAnchor, left: container.leadingAnchor, bottom: nil, right: container.trailingAnchor, paddingTop: 10, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 0)
        reloadButton.setAnchor(top: fieldCaptcha.bottomAnchor, left: container.leadingAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 20, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    func setLibrary() {
        container.setObjectView{_ in
            Utilities.shadow(controller: self, yourView: container)
            container.backgroundColor = .white
            container.layer.cornerRadius = 10
        }
        titleLabelCaptcha.setObject{_ in
            titleLabelCaptcha.font = UIFont.systemFont(ofSize: 15)
            titleLabelCaptcha.textAlignment = .center
            titleLabelCaptcha.text = "Captcha"
        }
        labelCaptcha.setObject{_ in
            labelCaptcha.font = UIFont.systemFont(ofSize: 15)
            labelCaptcha.textAlignment = .center
            labelCaptcha.text = "Default generated"
        }
        fieldCaptcha.setObject{_ in
            fieldCaptcha.placeholder = "Tulis captcha diatas"
        }
        reloadButton.setObject{_ in
            reloadButton.backgroundColor = ColorTheme.facebookGoalkes
            reloadButton.setTitle("Muat Ulang", for: .normal)
            reloadButton.setTitleColor(.white, for: .normal)
            reloadButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        }
        submitButton.setObject{_ in
            submitButton.backgroundColor = ColorTheme.succsessGoalkes
            submitButton.setTitle("Kirim", for: .normal)
            submitButton.setTitleColor(.white, for: .normal)
            submitButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        }
    }
    
}
