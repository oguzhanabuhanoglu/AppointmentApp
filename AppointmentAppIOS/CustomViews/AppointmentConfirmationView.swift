//
//  AppointmentConfirmationView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 5.07.2025.
//

import SwiftUI

struct AppointmentConfirmationView: View {
    
    var location: String = ""
    var barber: String = ""
    var services: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Şube:")
                .foregroundStyle(.secondaryText)
                .font(.appFont(.interVariable, size: 16))
                .padding(8)
            
            Text(" - \(location)")
                .foregroundStyle(.white)
                .font(.system(size: 16, weight: .medium))
                .padding(8)
            
            Divider()
                .frame(height: 3)
                .foregroundStyle(.secondaryText)
            
            Text("Berber:")
                .foregroundStyle(.secondaryText)
                .font(.appFont(.interVariable, size: 16))
                .padding(8)
            
            Text(" - \(barber)")
                .foregroundStyle(.white)
                .font(.system(size: 16, weight: .medium))
                .padding(8)
            
            Divider()
                .frame(height: 3)
                .foregroundStyle(.secondaryText)
            
            Text("Hizmetler:")
                .foregroundStyle(.secondaryText)
                .font(.appFont(.interVariable, size: 16))
                .padding(8)
            
            Text(" - \(services)")
                .foregroundStyle(.white)
                .font(.system(size: 16, weight: .medium))
                .padding(8)
            
            Spacer()
            
            VStack(alignment: .center)  {
                Divider()
                    .frame(height: 3)
                    .foregroundStyle(.secondaryText)
                
                Text("19/09/25 - CUMA - 10.00")
                    .foregroundStyle(.white2)
                    .font(.appFont(.interVariable, size: 16))
                    .padding(8)
                
                Divider()
                    .frame(height: 3)
                    .foregroundStyle(.secondaryText)
                
                Text("Toplam: 500$")
                    .foregroundStyle(.white)
                    .font(.system(size: 16, weight: .bold))
                    .padding(8)
            }
            
        }
        .background(
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(.golden, lineWidth: 1)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.black)
                )
        )
    }
    
   
}

#Preview {
    AppointmentConfirmationView()
}
