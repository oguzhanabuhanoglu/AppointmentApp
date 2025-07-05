//
//  ServiceCell.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 4.07.2025.
//

import SwiftUI

struct ServiceCell: View {
    
    var item: Int
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Saç Kesimi")
                        .foregroundStyle(isSelected == true ? .white : .secondaryText)
                        .font(.appFont(.interVariable, size: 16))
                    
                    Text("40 dk")
                        .foregroundStyle(.disabledButtonBackground)
                        .font(.appFont(.interVariable, size: 12))
                }
                
                Spacer()
                
                Text("500₺")
                    .foregroundStyle(.white)
                    .font(.appFont(.interVariable, size: 16))
            }
        }
        .padding()
        .cornerRadius(12)
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(isSelected ? Color.golden : Color.disabledButtonBackground, lineWidth: isSelected ? 3 : 1)
        }
    }
}

#Preview {
    ServiceCell(item: 10, isSelected: false, action: {})
}
