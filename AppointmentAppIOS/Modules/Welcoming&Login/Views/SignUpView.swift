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
            
            VStack {
                
                Text("Müşteri Kayıt")
                    .foregroundStyle(.white)
                    .font(.appFont(.inriaRegular, size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                MainTextField("Adınızı Giriniz...", text: $viewModel.name)
                    .padding(.horizontal)
                
                MainTextField("Soyadınızı Giriniz...", text: $viewModel.surname)
                    .padding()
                
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
                .padding(.horizontal)
                .padding(.bottom)
                
//                MainButton(isDisabled: false, isFilled: true, title: "Kayıt Ol")
//                    .padding(.vertical)
                
                NavigationLink(destination: VerificationCodeView()) {
                    Text("Kayıt Ol")
                        .foregroundStyle(.black)
                        .font(.appFont(.interVariable, size: 16))
                        .padding(.vertical, 16)
                        .frame(maxWidth: .infinity)
                        .background(.golden)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(.golden, lineWidth: 1)
                        }
                        .cornerRadius(12)
                        .padding(.horizontal)
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

            }
            .offset(y: -120)
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
            
        }
    }
}

#Preview {
    SignUpView()
}
