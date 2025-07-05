//
//  HourCell.swift
//  AppointmentAppIOS
//
//  Created by Oğuzhan Abuhanoğlu on 4.07.2025.
//

import SwiftUI

struct HourCell: View {
    
    var hour: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(hour)
                .foregroundStyle(isSelected ? .golden : .white)
                .font(.system(size: 12, weight: .medium, design: .default))
                .frame(width: 44, height: 44, alignment: .center)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .strokeBorder(isSelected ? .golden : .white2, lineWidth: isSelected ? 3 : 1)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(isSelected ? .black : .clear)
                        )
                )
        }

    }
}

#Preview {
    HourCell(hour: "12:00", isSelected: false, action: {})
}
