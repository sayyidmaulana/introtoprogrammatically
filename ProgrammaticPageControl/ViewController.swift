//
//  ViewController.swift
//  ProgrammaticPageControl
//
//  Created by sayyid maulana khakul yakin on 19/12/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

// Custom library for pink color
extension UIColor {
    static var mainPink = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
}

// Unnecessary page, the main controller moved into SwippingController
class ViewController: UIViewController {

    // let's avoid polluting viewDidLoad
    // curly brace is referred a closure or anno. function
    let zeroImageView: UIImageView = {
//        let imageView = UIImageView(image: #imageLiteral(resourceName: "zero"))
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "zero")
//        this enables autolayout for imagesView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    let descriptionText: UITextView = {
        let textView = UITextView()
        
        let attrText = NSMutableAttributedString(string: "Join us immediatelly in our fun!", attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18)])
        attrText.append(NSAttributedString(string: "\n\n\nAre you ready for loads and loads of fun? Don't wait any longer! We hope to see you in our store soon!", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        textView.attributedText = attrText
        
//        textView.text = "Join us immediatelly"
//        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    // make sure you apply encapsulation principles in your classes
    private let prevButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("PREV", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        btn.setTitleColor(.mainPink, for: .normal)
        return btn
    }()
    private let nextButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("NEXT", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        let pinkColor = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
        btn.setTitleColor(.mainPink, for: .normal)
        return btn
    }()
    private let pageControl: UIPageControl = {
        let page = UIPageControl()
        page.currentPage = 0
        page.numberOfPages = 4
        let pinkColor = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
        page.currentPageIndicatorTintColor = pinkColor
        page.pageIndicatorTintColor = UIColor(red: 249/255, green: 207/255, blue: 224/255, alpha: 1)
        return page
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
//        view.backgroundColor = .blue
        // Do any additional setup after loading the view.
//        let imageView = UIImageView(image: #imageLiteral(resourceName: "zero"))
//        view.addSubview(zeroImageView)
        view.addSubview(descriptionText)
        
        setupButtomControls()
        setupLayout()
//        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
    }

    fileprivate func setupButtomControls() {
        
//        let yellowView = UIView()
//        yellowView.backgroundColor = .yellow
//        let greenView = UIView()
//        greenView.backgroundColor = .green
//        let blueView = UIView()
//        blueView.backgroundColor = .blue
        
        let bottomControllStackView = UIStackView(arrangedSubviews: [prevButton, pageControl, nextButton])
        bottomControllStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControllStackView.distribution = .fillEqually
//        bottomControllStackView.axis = .vertical
        
        view.addSubview(bottomControllStackView)
//        prevButton.backgroundColor = .red
//        prevButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        NSLayoutConstraint.activate([
        bottomControllStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        bottomControllStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
        bottomControllStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        bottomControllStackView.heightAnchor.constraint(equalToConstant: 50)
             ])
    }
    
    private func setupLayout() {
        let topContainerView = UIView()
//        topContainerView.backgroundColor = .blue
        view.addSubview(topContainerView)
        topContainerView.addSubview(zeroImageView)
        zeroImageView.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor).isActive = true
        zeroImageView.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor).isActive = true
        zeroImageView.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
//        topContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        // remember to enable auto layout or make your own library
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
        topContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        topContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        topContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
//        zeroImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        zeroImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
//        zeroImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        zeroImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionText.topAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        descriptionText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descriptionText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}


