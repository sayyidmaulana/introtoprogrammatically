//
//  UIColor.swift
//  ProgrammaticPageControl
//
//  Created by sayyid maulana khakul yakin on 26/12/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func compileColor(hex: String) -> UIColor {
        let hexCode = hex.uppercased()
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexCode).scanHexInt64(&rgbValue)
        
        return UIColor.init(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: 1.0
        )
    }
    
    static var gray100 = compileColor(hex: "F7FAFC")
    static var gray200 = compileColor(hex: "EDF2F7")
    static var gray300 = compileColor(hex: "E2E8F0")
    static var gray400 = compileColor(hex: "CBD5E0")
    static var gray500 = compileColor(hex: "A0AEC0")
    static var gray600 = compileColor(hex: "718096")
    static var gray700 = compileColor(hex: "4A5568")
    static var gray800 = compileColor(hex: "2D3748")
    
    static var red100 = compileColor(hex: "FFF5F5")
    static var red200 = compileColor(hex: "FED7D7")
    static var red300 = compileColor(hex: "FEB2B2")
    static var red400 = compileColor(hex: "FC8181")
    static var red500 = compileColor(hex: "F56565")
    static var red600 = compileColor(hex: "E53E3E")
    static var red700 = compileColor(hex: "C53030")
    static var red800 = compileColor(hex: "9B2C2C")
    
    static var green100 = compileColor(hex: "F0FFF4")
    static var green200 = compileColor(hex: "C6F6D5")
    static var green300 = compileColor(hex: "9AE6B4")
    static var green400 = compileColor(hex: "68D391")
    static var green500 = compileColor(hex: "48BB78")
    static var green600 = compileColor(hex: "38A169")
    static var green700 = compileColor(hex: "2F855A")
    static var green800 = compileColor(hex: "276749")
    
    static var blue100 = compileColor(hex: "EBF8FF")
    static var blue200 = compileColor(hex: "BEE3F8")
    static var blue300 = compileColor(hex: "90CDF4")
    static var blue400 = compileColor(hex: "63B3ED")
    static var blue500 = compileColor(hex: "4299E1")
    static var blue600 = compileColor(hex: "3182CE")
    static var blue700 = compileColor(hex: "2B6CB0")
    static var blue800 = compileColor(hex: "2C5282")
    
}

struct ColorTheme {
    
    static let colorPrimary = UIColor(netHex: 0xC5495A)
    static let colorPrimaryDark = UIColor(netHex: 0xC5495A)
    static let colorAccent = UIColor(netHex: 0xED8E9E)
    
    static let redGoalkes = UIColor(netHex: 0xC5495A)
    static let redLightGoalkes = UIColor(netHex: 0xED8E9E)
    static let redSweetGoalkes = UIColor(netHex: 0xE8B2BA)
    static let darkRedGoalkes = UIColor(netHex: 0xFFA43948)
    static let roseGoalkes = UIColor(netHex: 0xDB1D3D)
    static let grayGoalkes = UIColor(netHex: 0xABABAB)
    static let lightGrayGoalkes = UIColor(netHex: 0xE7E7E7)
    static let darkGrayGoalkes = UIColor(netHex: 0x838383)
    static let yellowGoalkes = UIColor(netHex: 0xF8E71C)
    static let greenGoalkes = UIColor(netHex: 0x4CAF50)
    static let yellowYoungGoalkes = UIColor(netHex: 0xFFF7C5)
    static let black = UIColor(netHex: 0x000000)
    static let white = UIColor(netHex: 0xFFFFFF)
    static let darkWhite = UIColor(netHex: 0xF1F1F1)
    
    static let linkgoalkes = UIColor(netHex: 0x2200CC)
    static let succsessGoalkes = UIColor(netHex: 0xD3ECD9)
    static let succsessGoalkesDark = UIColor(netHex: 0x9befaf)
    static let errorGoalkes = UIColor(netHex: 0xF8D7DA)
    static let warningGoalkes = UIColor(netHex: 0xFFF2CD)
    static let infoGoalkes = UIColor(netHex: 0xCCE5FF)
    
    static let firstGoalkes = UIColor(netHex: 0x57FF7F)
    static let secondGoalkes = UIColor(netHex: 0xD44653)
    static let thirdGoalkes = UIColor(netHex: 0xE6BE4C)
    static let fourthGoalkes = UIColor(netHex: 0x4E7BD9)
    
    static let googleGoalkes = UIColor(netHex: 0xD34836)
    static let facebookGoalkes = UIColor(netHex: 0x3C5A99)
    
    static let gradient_start_color = UIColor(netHex: 0x4c84ff)
    static let gradient_end_color = UIColor(netHex: 0x18a3fe)
    
    
//    <!-- colors for tab and screent text -->
    
    static let tab_indicator_gray = UIColor(netHex: 0xc0c0c0)
    static let intro_title_color = UIColor(netHex: 0x000000)
    static let intro_description_color = UIColor(netHex: 0x656565)
    
    static let MainTheme = UIColor(netHex: 0x0076b6)
    static let MainBackground = UIColor(netHex: 0xffffff)
    static let TranslucentMainTheme = UIColor(white: 0x0076b6, alpha: 0.5)
    static let ChatGuestBackground = UIColor(netHex: 0x84c664)
    static let ChatOwnerBackground = UIColor(netHex: 0x979797)
    
}

extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int, alphaChannel: CGFloat) {
        self.init(red: CGFloat(red) / 255.0,
                  green: CGFloat(green) / 255.0,
                  blue: CGFloat(blue) / 255.0,
                  alpha: alphaChannel)
    }
    
    convenience init(netHex: Int, alpha: CGFloat = 1.0) {
        self.init(red: (netHex >> 16) & 0xff,
                  green: (netHex >> 8) & 0xff,
                  blue: netHex & 0xff,
                  alphaChannel: alpha)
    }
    
    func toColor(_ color: UIColor, percentage: CGFloat) -> UIColor {
        let percentage = max(min(percentage, 100), 0) / 100
        switch percentage {
        case 0: return self
        case 1: return color
        default:
            var (r1, g1, b1, a1): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
            var (r2, g2, b2, a2): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
            guard self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1) else { return self }
            guard color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2) else { return self }
            
            return UIColor(red: CGFloat(r1 + (r2 - r1) * percentage),
                           green: CGFloat(g1 + (g2 - g1) * percentage),
                           blue: CGFloat(b1 + (b2 - b1) * percentage),
                           alpha: CGFloat(a1 + (a2 - a1) * percentage))
        }
    }
}
