//
//  UserAppointmentCell.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 5.07.2025.
//

import SwiftUI

struct UserAppointmentCell: View {
    
    var date: String
    var location: String
    var barber: String
    var services: String
    var price: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text("Tarih: ")
                    .foregroundStyle(.secondaryText)
                    .font(.appFont(.interVariable, size: 16))
                
                Text(date)
                    .foregroundStyle(.white)
                    .font(.appFont(.interVariable, size: 16))
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                Text("Şube: ")
                    .foregroundStyle(.secondaryText)
                    .font(.appFont(.interVariable, size: 16))
                
                Text(location)
                    .foregroundStyle(.white)
                    .font(.appFont(.interVariable, size: 16))
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                Text("Berber: ")
                    .foregroundStyle(.secondaryText)
                    .font(.appFont(.interVariable, size: 16))
                
                Text(barber)
                    .foregroundStyle(.white)
                    .font(.appFont(.interVariable, size: 16))
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                Text("Hizmet: ")
                    .foregroundStyle(.secondaryText)
                    .font(.appFont(.interVariable, size: 16))
                
                Text(services)
                    .foregroundStyle(.white)
                    .font(.appFont(.interVariable, size: 16))
                
                Spacer()
                
                Text(price)
                    .foregroundStyle(.white)
                    .font(.appFont(.interVariable, size: 16))
            }
            .padding(.horizontal)
            
        }
    }
}

#Preview {
    UserAppointmentCell(date: "", location: "", barber: "", services: "", price: "")
}
