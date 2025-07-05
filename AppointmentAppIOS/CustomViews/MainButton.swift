//
//  MainButton.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 30.06.2025.
//

import SwiftUI

struct MainButton: View {
    
    let isDisabled: Bool
    let isFilled: Bool
    let title: String
//    let action: () -> Void?
    
    var body: some View {
//        Button {
//            if !isDisabled {
//                action()
//            }
//        } label: {
            Text(title)
                .font(.appFont(.interVariable, size: 16))
                .foregroundStyle(textColor)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 18)
                .background(backgroundColor)
                .overlay {
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(borderColor, lineWidth: 2)
                }
                .cornerRadius(24)
//        }
        .disabled(isDisabled)
        .opacity(isDisabled ? 0.5 : 1.0)
        .frame(maxHeight: 50)
    }
    
    private var textColor: Color {
        if isDisabled {
            return .secondaryText
        } else {
            return isFilled ? .black : .golden
        }
    }
    
    private var backgroundColor: Color {
        if isDisabled {
            return .disabledButtonBackground
        } else {
            return isFilled ? .golden : .clear
        }
    }
    
    private var borderColor: Color {
        return isFilled ? Color.clear : Color.golden
    }
    
    
}

#Preview {
    MainButton(isDisabled: false, isFilled: true, title: "Giriş Yap"/*, action: {}*/)
}
