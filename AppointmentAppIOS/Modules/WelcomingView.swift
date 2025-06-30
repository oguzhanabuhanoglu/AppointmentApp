//
//  ContentView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 30.06.2025.
//

import SwiftUI

struct WelcomingView: View {
    var body: some View {
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
                
                MainButton(isDisabled: false, isFilled: true, title: "Giriş Yap")
                    .padding(.vertical)
                    .offset(y: -20)
                    
                
                MainButton(isDisabled: false, isFilled: false, title: "Kayıt Ol")
                    .offset(y: -20)
                    
                
            }
        }
    }
}

#Preview {
    WelcomingView()
}
