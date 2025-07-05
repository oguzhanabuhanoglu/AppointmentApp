//
//  BarberModel.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 4.07.2025.
//

import Foundation

//MARK: MOCK
struct BarberModel: Identifiable, Equatable {
    let id = UUID()
    let fullName: String
    let imageName: String
}
