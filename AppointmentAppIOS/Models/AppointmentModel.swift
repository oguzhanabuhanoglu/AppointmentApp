//
//  File.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 5.07.2025.
//

import Foundation

// MARK: MOCK
struct AppointmentModel: Identifiable, Equatable {
    let id = UUID()
    let location: String
    let barber: String
    let services: [String]
    let date: String
    let price: String
}
