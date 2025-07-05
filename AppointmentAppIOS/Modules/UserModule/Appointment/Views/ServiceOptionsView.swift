//
//  ServiceOptionsView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 2.07.2025.
//

import SwiftUI

struct ServiceOptionsView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedServiceID: Int?
    
    var body: some View {
        ZStack {
            Color.appBackground.ignoresSafeArea(.all)
            
            VStack {
                
                AppointmentFlowIndicator(appointmentFlow: .service)
                    .padding(.vertical, 8)
                
                ScrollView(.vertical) {
                    VStack(spacing: 16) {
                        ForEach(1...10, id: (\.self)) { item in
                            ServiceCell(item: item, isSelected: selectedServiceID == item) {
                                selectedServiceID = item
                            }
                        }
                    }
                }
                
                
                NavigationLink(destination: BarberAndDateOptions()) {
                    MainButton(isDisabled: selectedServiceID == nil ? true : false, isFilled: true, title: "Onayla")
                }
                .padding()
               
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.golden)
                    }
                }
            }
            
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Hizmet Seçiniz")
                        .foregroundStyle(.golden)
                        .font(.appFont(.inriaBold, size: 20))
                }
            }
            .padding(.horizontal, 20)
        }
    }
}




#Preview {
    ServiceOptionsView()
}
