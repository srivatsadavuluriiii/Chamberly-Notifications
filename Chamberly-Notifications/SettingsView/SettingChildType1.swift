//
//  SettingChildType1.swift
//  Chamberly-Notifications
//
//  Created by srivatsa davuluri on 13/03/24.
//

import SwiftUI

struct SettingsOptionRow: View {
    var title: String
    @State private var isToggled: Bool = false
    
    var body: some View {
        HStack {
            Text(title)
                .padding(.leading)
                .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.1843137255, blue: 0.337254902, alpha: 1.0)))
            Spacer()
            Toggle("", isOn: $isToggled)
                .labelsHidden()
                .padding(.trailing)
                .tint(Color(red: 0.478, green: 0.478, blue: 1.0))
        }
    }
}
