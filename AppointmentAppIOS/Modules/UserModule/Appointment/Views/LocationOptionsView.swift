//
//  LocationOptionsView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 3.07.2025.
//

import SwiftUI

struct LocationOptionsView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var selectedLocationID: Int?
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.appBackground.ignoresSafeArea(.all)
            
            VStack(spacing: 0) {
                
                AppointmentFlowIndicator(appointmentFlow: .location)
                    .padding(.vertical, 8)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 16) {
                        ForEach(1...10, id: \.self) { item in
                            LocationCell(
                                item: item,
                                isSelected: selectedLocationID == item,
                                action: {
                                    selectedLocationID = item
                                }
                            )
                        }
                    }
                }
                
                
                
                NavigationLink(destination: ServiceOptionsView()) {
                    MainButton(isDisabled: selectedLocationID == nil ? true : false , isFilled: true, title: "Onayla")
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
                
                ToolbarItem(placement: .principal) {
                    Text("Şube Seçiniz")
                        .foregroundStyle(.golden)
                        .font(.appFont(.inriaBold, size: 20))
                }
            }
            .padding(.horizontal, 20)
            
        }
        
        
    }
}

#Preview {
    LocationOptionsView()
}

