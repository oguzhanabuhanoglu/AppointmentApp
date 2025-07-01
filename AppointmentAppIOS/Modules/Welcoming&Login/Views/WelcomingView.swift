//
//  ContentView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 30.06.2025.
//

import SwiftUI

struct WelcomingView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.appBackground.edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Text("Dest Hair")
                        .foregroundStyle(.golden)
                        .font(.appFont(.inriaBold, size: 70))
                        .padding(.bottom)
                        .offset(y: -50)
                    
                    Text("Hoşgeldiniz")
                        .foregroundStyle(.white)
                        .font(.appFont(.inriaRegular, size: 35))
                        .padding(.bottom)
                        .offset(y: -50)
                    
                    NavigationLink(destination: LoginView()) {
                        Text("Müşteri Girişi")
                            .foregroundStyle(.black)
                            .font(.appFont(.interVariable, size: 18))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 16)
                            .background(.golden)
                            .cornerRadius(24)
                            .padding(.horizontal)
                            
                    }
                    .padding(.vertical)
                    .offset(y: -20)
                   
                    
                    MainButton(isDisabled: false, isFilled: false, title: "Berber Girişi", action: {})
                        .offset(y: -20)
                        
                    
                }
            }
        }
        
    }
}

#Preview {
    WelcomingView()
}
