//
//  AppointmentHistoryView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 4.07.2025.
//

import SwiftUI

struct AppointmentHistoryView: View {
    @Environment(\.dismiss) private var dismiss
    
    private var mockAppointments: [AppointmentModel] = [
        AppointmentModel(location: "Dest Hair / Bomonti", barber: "Oğuzhan Abuhanoğlu", services: ["Saç Sakal Kesim"], date: "19/09/25 - CUMA - 10.00", price: "500₺"),
        AppointmentModel(location: "Dest Hair / Bomonti", barber: "Oğuzhan Abuhanoğlu", services: ["Saç Sakal Kesim"], date: "19/09/25 - CUMA - 10.00", price: "500₺"),
        AppointmentModel(location: "Dest Hair / Bomonti", barber: "Oğuzhan Abuhanoğlu", services: ["Saç Sakal Kesim"], date: "19/09/25 - CUMA - 10.00", price: "500₺"),
        AppointmentModel(location: "Dest Hair / Bomonti", barber: "Oğuzhan Abuhanoğlu", services: ["Saç Sakal Kesim"], date: "19/09/25 - CUMA - 10.00", price: "500₺")
    ]
    
    var body: some View {
        ZStack {
            Color.appBackground.ignoresSafeArea(.all)
            
            List {
                ForEach(mockAppointments) { appointment in
                    UserAppointmentCell(
                        date: appointment.date,
                        location: appointment.location,
                        barber: appointment.barber,
                        services: appointment.services.first!,
                        price: appointment.price
                    )
                    .swipeActions {
                        Button(role: .destructive) {
                            // Silme işlemi
                        } label: {
                            Label("İptal", systemImage: "")
                        }
                        
                        Button {
                            // Telefon aksiyonu
                        } label: {
                            Label("Ara", systemImage: "phone")
                        }
                        .tint(.golden)
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Randevularım")
                        .foregroundStyle(.golden)
                        .font(.appFont(.inriaBold, size: 20))
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.golden)
                    }
                    
                }
            }
            
        }
        
    }
    
}

#Preview {
    AppointmentHistoryView()
}
