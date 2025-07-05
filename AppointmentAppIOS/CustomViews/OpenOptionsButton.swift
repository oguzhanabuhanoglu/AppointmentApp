//
//  OpenOptionsButton.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 2.07.2025.
//

import SwiftUI

enum OptionType {
    case service
    case location
    case barber
}

struct OpenOptionsButton: View {
    
    var optionType: OptionType
    var isOptionSelected: Bool
    
    var body: some View {
        
        if !isOptionSelected {
            switch optionType {
            case .service:
                Text("Hizmet Seçiniz")
                    .foregroundStyle(.secondaryText)
                    .font(.appFont(.interVariable, size: 16))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.golden, lineWidth: 2)
                            .fill(.viewPlaceholder)
                    }
                
                
            case .location:
                Text("Şube Seçiniz")
                    .foregroundStyle(.secondaryText)
                    .font(.appFont(.interVariable, size: 16))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.golden, lineWidth: 2)
                            .fill(.viewPlaceholder)
                    }
                
            case .barber:
                VStack {
                    Text("Berber Seçiniz")
                        .foregroundStyle(.secondaryText)
                        .font(.appFont(.interVariable, size: 16))
                        .padding(.bottom, 2)
                    
                    
                    Text("Varsayılan: Fark Etmez")
                        .foregroundStyle(.golden)
                        .font(.appFont(.interVariable, size: 16))
                    
                    
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.golden, lineWidth: 2)
                        .fill(.viewPlaceholder)
                }
                
                
            }
            
        } else {
            switch optionType {
            case .service:
                HStack {
                    Text("Hizmet:")
                        .foregroundStyle(.secondaryText)
                        .font(.appFont(.interVariable, size: 16))
                    
                    Text("Saç Kesimi")
                        .foregroundStyle(.golden)
                        .font(.appFont(.interVariable, size: 16))
                    
                    Spacer()
                    
                    Text("500₺")
                        .foregroundStyle(.white)
                        .font(.appFont(.interVariable, size: 16))
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.golden, lineWidth: 2)
                        .fill(.black)
                }
                
                
                
            case .location:
                HStack {
                    Text("Şube:")
                        .foregroundStyle(.secondaryText)
                        .font(.appFont(.interVariable, size: 16))
                    
                    Text("Bomonti")
                        .foregroundStyle(.golden)
                        .font(.appFont(.interVariable, size: 16))
                    
                    Spacer()
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.golden, lineWidth: 2)
                        .fill(.black)
                }
                
                
            case .barber:
                HStack {
                    Text("Berber:")
                        .foregroundStyle(.secondaryText)
                        .font(.appFont(.interVariable, size: 16))
                        .padding(.bottom, 2)
                    
                    
                    Text("İmam H.")
                        .foregroundStyle(.golden)
                        .font(.appFont(.interVariable, size: 16))
                    
                    Spacer()
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.golden, lineWidth: 2)
                        .fill(.black)
                }
                
                
            }
            
        }
        
    }
}

#Preview {
    OpenOptionsButton(optionType: .barber, isOptionSelected: true)
}
