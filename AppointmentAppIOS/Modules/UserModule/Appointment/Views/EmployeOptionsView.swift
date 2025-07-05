//
//  EmployeOptionsView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 3.07.2025.
//

import SwiftUI

struct EmployeOptionsView: View {
    @Environment(\.dismiss) private var dismiss
    
    let sampleBarbers = [
        BarberModel(fullName: "Ali Korkmaz", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1"),
        BarberModel(fullName: "Fark Etmez", imageName: "image1")
    ]
    
    @State private var selectedBarber: BarberModel? = nil
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    
    var body: some View {
        ZStack {
            Color.appBackground.ignoresSafeArea(.all)
            
            VStack(spacing: 12) {
                
                AppointmentFlowIndicator(appointmentFlow: .barberAndDate)
                    .padding(.vertical, 8)
                
                barberGrid
                
                MainButton(isDisabled: false, isFilled: true, title: "Onayle")
                
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
                    Text("Berber Seçiniz")
                        .foregroundStyle(.golden)
                        .font(.appFont(.inriaBold, size: 20))
                }
            }
            .padding(.horizontal, 20)
        }
    }
    
    var barberGrid: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(sampleBarbers) { barber in
                    let isSelected = selectedBarber == barber
                    
                    BarberCell(isSelected: isSelected, name: barber.fullName, imageName: barber.imageName) {
                        selectedBarber = barber
                    }
                }
            }
        }
    }
}

#Preview {
    EmployeOptionsView()
}

