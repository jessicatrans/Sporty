//
//  FontExtensions.swift
//  Sporty
//
//  Created by Jessica Trans on 1/17/25.
//

import SwiftUI

//extension Font {
//    static func setCustom(fontStyle: Font.TextStyle, fontWeight: Weight = .regular) -> Font {
////        return Font.custom(CustomFont.regular.rawValue, size: fontStyle.size)
////        return Font.custom(fontWeight.rawValue, size: fontStyle.size, relativeTo: .caption)
//        if #available(iOS 16.0, *) {
//            return Font.system(size: fontStyle.size, weight: fontWeight, design: .default)
//        } else {
//            // Fallback on earlier versions
//            return Font.system(size: fontStyle.size, design: .default).weight(fontWeight)
//        }
//    }
//}
//
//extension UIFont {
//    static func setCustom(fontStyle: Font.TextStyle, fontWeight: CustomFont) -> UIFont? {
//        return UIFont(name: fontWeight.rawValue, size: fontStyle.size)
//    }
//    
//    static func setSystem(fontStyle: Font.TextStyle, fontWeight: Weight) -> UIFont? {
//        return systemFont(ofSize: fontStyle.size, weight: fontWeight)
//    }
//}

extension Font {
    static func setCustom(fontStyle: Font.TextStyle = .body, fontWeight: Weight = .regular) -> Font {
        return Font.custom(CustomFont(weight: fontWeight).rawValue, size: fontStyle.size)
    }
}

extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return 24 // sporty logo, H1
        case .title: return 20      // title outside card, H2
        case .title2: return 16     // title in cards
        case .title3: return 20
        case .headline: return 14 // filters + button text
        case .body: return 14       // card location, regular text
        case .callout: return 16    // view all
        case .subheadline: return 15
        case .footnote: return 13
        case .caption: return 12    // card sport + level + time + friends
        case .caption2: return 11
        @unknown default:
            return 8
        }
    }
}

enum CustomFont: String {
    case regular = "Poppins-Regular"
    case semibold = "Poppins-SemiBold"
    case medium = "Poppins-Medium"
    case bold = "Poppins-Bold"
//    case extrabold = "Poppins-ExtraBold"
    
    init(weight: Font.Weight) {
        switch weight {
        case .regular:
            self = .regular
        case .semibold:
            self = .semibold
        case .medium:
            self = .medium
        case .bold:
            self = .bold
        default:
            self = .regular
        }
    }
}
