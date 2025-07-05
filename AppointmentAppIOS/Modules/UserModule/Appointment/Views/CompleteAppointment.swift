//
//  CompleteAppointment.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 5.07.2025.
//

import SwiftUI

struct CompleteAppointment: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            Color.appBackground.edgesIgnoringSafeArea(.all)
            
            VStack {
                AppointmentFlowIndicator(appointmentFlow: .complete)
                    .padding(.vertical, 8)
                
                AppointmentConfirmationView(location: "Bomonti", barber: "Ali Korkmaz", services: "Saç Sakal Tıraşı")
                    .padding(.bottom,20)
                
                Button {
                    dismiss()
                } label: {
                    Text("Geri Dön")
                        .foregroundStyle(.golden)
                        .font(.appFont(.interVariable, size: 16))
                        .underline()
                        .padding()
                }
                
                MainButton(isDisabled: false, isFilled: false, title: "Onayla")
                    .padding(.bottom, 24)

            }
            .navigationBarBackButtonHidden()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Randevu Oluştur")
                        .foregroundStyle(.golden)
                        .font(.appFont(.inriaBold, size: 20))
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image("chevron.left")
                        .foregroundStyle(.golden)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CompleteAppointment()
}
