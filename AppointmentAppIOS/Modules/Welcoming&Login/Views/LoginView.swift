//
//  LoginView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 30.06.2025.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @StateObject private var viewModel = LoginViewModel()
    @State private var selectedCode: String = "+90"
    
    var body: some View {
        
        ZStack {
            Color.appBackground.edgesIgnoringSafeArea(.all)
            
            VStack {
            
                Text("Müşteri Girişi")
                    .foregroundStyle(.white)
                    .font(.appFont(.inriaRegular, size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                HStack {
                    Menu {
                        ForEach(viewModel.areaCodes, id: \.self) { code in
                            Button(action: {
                                selectedCode = code
                            }) {
                                Text(code)
                            }
                        }
                    } label: {
                        Text(selectedCode)
                            .foregroundColor(.white)
                            .font(.appFont(.interVariable, size: 16))
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(.golden, lineWidth: 1)
                            )
                        
                    }

                    MainTextField("Telefon Numarnızı Giriniz...", text: $viewModel.phoneNumber)
                       
                }
                .padding(.horizontal)
                .padding(.bottom)
               
                
                MainButton(isDisabled: false, isFilled: true, title: "Giriş Yap", action: {})
                .padding(.bottom)
                
                NavigationLink {
                    SignUpView()
                } label: {
                    Text("Kayıt Ol")
                        .foregroundStyle(.golden)
                        .font(.appFont(.interVariable, size: 16))
                        .underline()
                }

                
                
            }
            .offset(y: -120)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Dest Hair")
                        .font(.custom("InriaSerif-Bold", size: 32))
                        .foregroundColor(.golden)
                }
            }
            .toolbar {
                Button {
                   dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .frame(width: 25, height: 25)
                }
                
            }
        }
        
    }
}

#Preview {
    LoginView()
}
