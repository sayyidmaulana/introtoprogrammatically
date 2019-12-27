//
//  PageCell.swift
//  ProgrammaticPageControl
//
//  Created by sayyid maulana khakul yakin on 20/12/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    var page: Page? {
        didSet {
//print(page?.imageName) //becarefull with optional and forcecasting please use guard let to handle unwrapped page and condition
            guard let unwrappedPage = page else { return }
            zeroImageView.image = UIImage(named: unwrappedPage.imageName)
            let attrText = NSMutableAttributedString(string: unwrappedPage.headerText, attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18)])
            attrText.append(NSAttributedString(string: "\n\n\n\(unwrappedPage.bodyText)", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
            descriptionText.attributedText = attrText
            descriptionText.textAlignment = .center
        }
    }
    
    private let zeroImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "zero"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let descriptionText: UITextView = {
        let textView = UITextView()
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        // we don't need this anymore it going to be reassign
        let attrText = NSMutableAttributedString(string: "Join us immediatelly in our fun!", attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18)])
        attrText.append(NSAttributedString(string: "\n\n\nAre you ready for loads and loads of fun? Don't wait any longer! We hope to see you in our store soon!", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        textView.attributedText = attrText
        textView.textAlignment = .center
        //
        
        return textView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        let topContainerView = UIView()
        addSubview(topContainerView)
        addSubview(descriptionText)
        
        topContainerView.addSubview(zeroImageView)
        zeroImageView.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor).isActive = true
        zeroImageView.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor).isActive = true
        zeroImageView.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.5).isActive = true
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
        topContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        topContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
      
        descriptionText.topAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        descriptionText.leftAnchor.constraint(equalTo: leftAnchor, constant: 24).isActive = true
        descriptionText.rightAnchor.constraint(equalTo: rightAnchor, constant: -24).isActive = true
        descriptionText.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
}
