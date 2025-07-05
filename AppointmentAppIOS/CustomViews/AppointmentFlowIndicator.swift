//
//  AppointmentFlowIndicator.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 4.07.2025.
//

import SwiftUI

enum AppointmentFlow {
    case location
    case service
    case barberAndDate
    case complete
}

struct AppointmentFlowIndicator: View {
    
    var appointmentFlow: AppointmentFlow
    
    var body: some View {
        HStack {
            Text("Şube")
                .foregroundStyle(appointmentFlow == .location ? .golden : .disabledButtonBackground)
                .font(.system(size: 13, weight: .semibold))

            Image(systemName: "chevron.right")
                .foregroundStyle(appointmentFlow == .service ? .golden : .disabledButtonBackground)
                .font(.system(size: 14, weight: .semibold))
            
            Text("Hizmet")
                .foregroundStyle(appointmentFlow == .service ? .golden : .disabledButtonBackground)
                .font(.system(size: 14, weight: .semibold))
            
            Image(systemName: "chevron.right")
                .foregroundStyle(appointmentFlow == .barberAndDate ? .golden : .disabledButtonBackground)
                .font(.system(size: 13, weight: .semibold))
            
            Text("Berber & Tarih")
                .foregroundStyle(appointmentFlow == .barberAndDate ? .golden : .disabledButtonBackground)
                .font(.system(size: 13, weight: .semibold))
            
            Image(systemName: "chevron.right")
                .foregroundStyle(appointmentFlow == .complete ? .golden : .disabledButtonBackground)
                .font(.system(size: 13, weight: .semibold))
            
            Text("Randevu Onay")
                .foregroundStyle(appointmentFlow == .complete ? .golden : .disabledButtonBackground)
                .font(.system(size: 13, weight: .semibold))
        }
    }
}

#Preview {
    AppointmentFlowIndicator(appointmentFlow: .location)
}
