//
//  LoginViewModel.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 1.07.2025.
//

import Foundation

class LoginViewModel: ObservableObject {
    var areaCodes = ["+90", "+1", "+44", "+49", "+33"]
    @Published var phoneNumber: String = ""
    @Published var name: String = ""
    @Published var surname: String = ""

    
    
}
