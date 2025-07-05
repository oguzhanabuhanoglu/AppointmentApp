//
//  LocationCell.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 3.07.2025.
//

import SwiftUI

struct LocationCell: View {
    var item: Int
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack(alignment: .bottom) {
                Image("image1")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 150)
                    .clipped()
                
                HStack {
                    Text("Dest Hair Bomonti \(item)")
                        .foregroundStyle(.white)
                        .font(.appFont(.inriaRegular, size: 16))
                        .padding(8)
                        .frame(maxWidth: .infinity)
                        .background(Color.black.opacity(0.5))
                        .cornerRadius(8)
                }

            }
            .cornerRadius(12)
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(isSelected ? Color.golden : Color.disabledButtonBackground, lineWidth: isSelected ? 3 : 1)
            }
        }
    }
}

#Preview {
    LocationCell(item: 10, isSelected: false, action: {})
}
