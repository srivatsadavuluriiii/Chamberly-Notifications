//
//  SettingChildType2.swift
//  Chamberly-Notifications
//
//  Created by srivatsa davuluri on 13/03/24.
//

import SwiftUI

struct SettingsOptionRow1: View {
    var title: String
    var text: String?
    @State private var isToggled: Bool = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.1843137255, blue: 0.337254902, alpha: 1.0)))
                if let text = text {
                    Text(text)
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                }
            }.padding(.leading)
            Spacer()
            
            Toggle("", isOn: $isToggled)
                .labelsHidden()
                .padding(.trailing)
                .tint(Color(red: 0.478, green: 0.478, blue: 1.0))
        }
    }
}

#Preview {
    SettingsOptionRow1(title: "Hello", text: "sdjknfbjksjsdjgbdsbgk")
}
