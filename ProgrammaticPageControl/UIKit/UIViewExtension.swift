//
//  UIViewExtension.swift
//  ProgrammaticPageControl
//
//  Created by Sayyid Maulana Khakul Y on 07/04/20.
//  Copyright © 2020 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

extension UIButton {
    func setObject(completion: (UIButton) -> Void) {
        completion(self)
    }
}

extension UIImageView {
    func setObject(completion: (UIImageView) -> Void) {
        completion(self)
    }
}

extension UILabel {
    func setObject(completion: (UILabel) -> Void) {
        completion(self)
    }
}

extension UITextField {
    func setObject(completion: (UITextField) -> Void) {
        completion(self)
    }
}

extension UITextView {
    func setObject(completion: (UITextView) -> Void) {
        completion(self)
    }
}

extension UIStackView {
    func setObject(completion: (UIStackView) -> Void) {
        completion(self)
    }
}

extension UIView {
    func setObjectView(completion: (UIView) -> Void) {
        completion(self)
    }
}

extension UIScrollView {
    func setObjectScrollView(completion: (UIScrollView) -> Void) {
        completion(self)
    }
}

extension UITableView {
    func setObject(completion: (UITableView) -> Void) {
        completion(self)
    }
}

extension UICollectionView {
    func setObject(completion: (UICollectionView) -> Void) {
        completion(self)
    }
}
