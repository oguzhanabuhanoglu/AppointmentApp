//
//  UserHomeView.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 1.07.2025.
//

import SwiftUI

struct UserHomeView: View {
    var body: some View {
        ZStack {
            Color.appBackground.ignoresSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    // MARK: Images
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(1...3, id: \.self) { index in
                                Image("image\(index)")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 250, height: 150)
                                    .clipped()
                                    .cornerRadius(12)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    // MARK: Welcoming View
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Hoşgeldin Oğuzhan")
                            .foregroundStyle(.white)
                            .font(.appFont(.inriaBold, size: 24))
                        
                        
                        
                        Text("Gelecek Randevu: Bulunmuyor.")
                            .foregroundStyle(.secondaryText)
                            .font(.appFont(.interVariable, size: 16))
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 24)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.viewPlaceholder)
                    )
                    .padding()
                    
                    // MARK: Appointment Button
                    MainButton(isDisabled: false, isFilled: true, title: "Randevu İşlemleri", action: {})
                    
                    // MARK: Saloon infos
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("Dest Hair:")
                                .foregroundStyle(.golden)
                                .font(.appFont(.inriaBold, size: 20))
                            
                            Text("Bomonti")
                                .foregroundStyle(.white)
                                .font(.appFont(.inriaBold, size: 20))
                        }
                        
                        Text("Çalışma Saatleri: 09:00 - 20:00")
                            .foregroundStyle(.secondaryText)
                            .font(.appFont(.interVariable, size: 16))
                        
                        HStack {
                            Text("Konum:")
                                .foregroundStyle(.secondaryText)
                                .font(.appFont(.interVariable, size: 16))
                            
                            Text("Rıhtım Caddesi, Bomonti İstanbul")
                                .foregroundStyle(.links)
                                .font(.appFont(.interVariable, size: 16))
                            
                            
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 14)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.viewPlaceholder)
                    )
                    .padding()
                    
                    // MARK: User settings
                    VStack(alignment: .leading, spacing: 14) {
                        HStack {
                            Text("Ayarlar")
                                .foregroundStyle(.white)
                                .font(.appFont(.inriaBold, size: 20))
                            
                            Spacer()
                            
                            Image(systemName: "ellipsis")
                                .foregroundStyle(.white)
                        }
                        
                        Text("Kişisel Bilgiler")
                            .foregroundStyle(.white)
                            .font(.appFont(.interItalicVariable, size: 17))
                            .padding(.top)
                        
                        Text("İsim: Oğuzhan")
                            .foregroundStyle(.secondaryText)
                            .font(.appFont(.interVariable, size: 16))
                        
                        
                        Text("Soyisim: Abuhanoğlu")
                            .foregroundStyle(.secondaryText)
                            .font(.appFont(.interVariable, size: 16))
                        
                        
                        Text("Telefon Numarası: (507) 777 11 81")
                            .foregroundStyle(.secondaryText)
                            .font(.appFont(.interVariable, size: 16))
                        
                        Divider()
                            .frame(height: 1)
                            .background(Color.white)
                            .padding(.vertical, 8)
                        

                        HStack {
                            Spacer()
                            
                            Button {
                                // log out
                            } label: {
                                Text("Çıkış Yap")
                                    .foregroundStyle(.golden)
                                    .font(.appFont(.interVariable, size: 16))
                                    .padding(.vertical)
                                    .padding(.horizontal, 30)
                                    .background {
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(.golden, lineWidth: 1)
                                            .fill(Color.black)
                                    }
                            }
                        }
                        .padding(.top, 20)
                        
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.vertical, 14)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.viewPlaceholder)
                    )
                    .padding()
                    
                    
                    
                    Spacer()
                }
            }
            .padding(.top, 5)
            .navigationBarBackButtonHidden()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Dest Hair")
                        .foregroundStyle(.golden)
                        .font(.appFont(.inriaBold, size: 32))
                }
            }
        }
    }
}

#Preview {
    UserHomeView()
}
