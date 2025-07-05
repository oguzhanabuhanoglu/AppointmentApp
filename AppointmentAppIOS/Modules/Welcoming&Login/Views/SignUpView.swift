//
//  SignUpView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 1.07.2025.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.dismiss) private var dismiss
    
    @StateObject private var viewModel = LoginViewModel()
    @State var selectedCode: String = "+90"
    
    var body: some View {
        ZStack {
            
            Color.appBackground.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 12) {
                
                Text("Müşteri Kayıt")
                    .foregroundStyle(.white)
                    .font(.appFont(.inriaRegular, size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                
                MainTextField("Adınızı Giriniz...", text: $viewModel.name)
                   
                
                MainTextField("Soyadınızı Giriniz...", text: $viewModel.surname)
                   
                
                HStack {

                    Menu {
                        ForEach(viewModel.areaCodes, id: \.self) { code in
                            Button {
                                selectedCode = code
                            } label: {
                                Text(code)
                            }

                        }
                    } label: {
                        Text(selectedCode)
                            .foregroundStyle(.white)
                            .font(.appFont(.interVariable, size: 16))
                            .padding()
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(.golden, lineWidth: 1)
                            }
                    }

                    MainTextField("Telefon Numarnızı Giriniz...", text: $viewModel.phoneNumber)
                       
                }
                
                .padding(.bottom)
                
//                MainButton(isDisabled: false, isFilled: true, title: "Kayıt Ol")
//                    .padding(.vertical)
                
                NavigationLink(destination: VerificationCodeView()) {
                    MainButton(isDisabled: false, isFilled: true, title: "Kayıt Ol")
                }
                
                Button {
                    //
                } label: {
                    Text("Giriş Yap")
                        .foregroundStyle(.golden)
                        .font(.appFont(.interVariable, size: 16))
                        .underline()
                }
                .padding()
               

                Spacer()
            }
            .padding(.top, 80)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Dest Hair")
                        .foregroundStyle(.golden)
                        .font(.appFont(.inriaBold, size: 32))
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
            .padding(.horizontal, 24)
           
        }
    }
}

#Preview {
    SignUpView()
}
