//
//  TextField.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 1.07.2025.
//

import SwiftUI

struct MainTextField: View {
    let placeholder: String
    @Binding var text: String
    
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
    }
    
    var body: some View {
        TextField(placeholder, text: $text)
            .keyboardType(.numberPad)
            .textContentType(.telephoneNumber)
            .autocapitalization(.none)
            .padding()
            .background(Color.clear)
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.golden, lineWidth: 2)
            }
            .cornerRadius(12)
        
    }
}
