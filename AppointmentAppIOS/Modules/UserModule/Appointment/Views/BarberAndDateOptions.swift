//
//  CreateAppointmentView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 2.07.2025.
//

import SwiftUI

struct BarberAndDateOptions: View {
    
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel = AppointmentViewModel()
    
    @State private var selectedDate = Date()
    @State private var selectedHour: String = ""
    
    
    var body: some View {
        ZStack {
            Color.appBackground.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 12) {
                
                AppointmentFlowIndicator(appointmentFlow: .barberAndDate)
                    .padding(.vertical, 8)
                
                NavigationLink(destination: EmployeOptionsView()) {
                    OpenOptionsButton(optionType: .barber, isOptionSelected: false)
                }
                
                
                DatePicker("", selection: $selectedDate, displayedComponents: [.date])
                    .datePickerStyle(.graphical)
                    .accentColor(.golden)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.golden, lineWidth: 1)
                            .background(Color.viewPlaceholder.cornerRadius(12))
                    )
                
                
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(viewModel.workingHours, id: \.self) { hour in
                            HourCell(hour: hour, isSelected: selectedHour == hour) {
                                selectedHour = hour
                            }
                        }
                    }
                    
                }
                
                
                NavigationLink(destination: CompleteAppointment()) {
                    MainButton(isDisabled: false, isFilled: true, title: "Randevu Oluştur")
                }
                .padding(.vertical)
                
                
                Spacer()
            }
            .padding(.top, 5)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.golden)
                    }
                    
                }
            })
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Berber ve Tarih Seçiniz")
                        .foregroundStyle(.golden)
                        .font(.appFont(.inriaBold, size: 20))
                }
            }
            .padding(.horizontal, 20)
            
            
        }
        
        
    }
    
    
    
    
}


#Preview {
    BarberAndDateOptions()
}
