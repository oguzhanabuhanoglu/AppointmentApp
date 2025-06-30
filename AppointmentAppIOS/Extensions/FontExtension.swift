//
//  FontExtension.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 30.06.2025.
//

import SwiftUI

enum AppFont: String {
    // Inria Serif
    case inriaRegular = "InriaSerif-Regular"
    case inriaBold = "InriaSerif-Bold"
    case inriaItalic = "InriaSerif-Italic"
    case inriaBoldItalic = "InriaSerif-BoldItalic"
    case inriaLight = "InriaSerif-Light"
    case inriaLightItalic = "InriaSerif-LightItalic"
    
    // Instrument Serif
    case instrumentRegular = "InstrumentSerif-Regular"
    case instrumentItalic = "InstrumentSerif-Italic"
    
    // Inter Variable (sadece bir tanesini kullanıyorsan burada)
    case interVariable = "Inter-VariableFont_opsz,wght"
    case interItalicVariable = "Inter-Italic-VariableFont_opsz,wght"
}

extension Font {
    static func appFont(_ name: AppFont, size: CGFloat) -> Font {
        Font.custom(name.rawValue, size: size)
    }
}
