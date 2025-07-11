//
//  AppointmentViewModel.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 2.07.2025.
//

import Foundation

class AppointmentViewModel: ObservableObject {
    @Published var workingHours: [String] = ["09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00"]
}
