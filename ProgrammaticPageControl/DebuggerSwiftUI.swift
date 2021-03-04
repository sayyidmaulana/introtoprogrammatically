//
//  DebuggerSwiftUI.swift
//  ProgrammaticPageControl
//
//  Created by Sayyid Maulana Khakul Yakin on 18/02/21.
//  Copyright © 2021 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

#if DEBUG
import SwiftUI

@available(iOS 13, *)
public extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {
        // this variable is used for injecting the current view controller
        let viewController: UIViewController

        func makeUIViewController(context: Context) -> UIViewController {
            return viewController
        }

        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        }
    }

    public func toPreview() -> some View {
        // inject self (the current view controller) for the preview
        Preview(viewController: self)
    }
}
#endif
