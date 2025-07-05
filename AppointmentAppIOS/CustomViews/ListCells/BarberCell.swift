//
//  BarberCell.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 4.07.2025.
//

import SwiftUI

struct BarberCell: View {
   
    var isSelected: Bool
    var name: String
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack(spacing: 16){
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80, alignment: .center)
                    .clipShape(Circle())
                
                Text(name)
                    .foregroundStyle(.white)
                    .font(.appFont(.interVariable, size: 15))
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(isSelected ? .golden : .disabledButtonBackground, lineWidth: isSelected ? 3 : 1)
            }
        }

    }
}

#Preview {
    BarberCell(isSelected: false, name: "AT", imageName: "image1", action: {})
}
