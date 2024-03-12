//
//  sdfg.swift
//  Chamberly-Notifications
//
//  Created by srivatsa davuluri on 12/03/24.
//

import SwiftUI

struct SystemGeneratedNotificationRow: View {
    var notification: SystemGeneratedNotification
    
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading) {
                Text(notification.text)
                    .bold()
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.1843137255, blue: 0.337254902, alpha: 1.0)))
            }
        }
        .padding(.vertical, 5)
    }
}

struct SystemGeneratedNotificationRow_Previews: PreviewProvider {
    static var previews: some View {
        SystemGeneratedNotificationRow(notification: SystemGeneratedNotification(image: "systemGeneratedIcon", text: "Sample system-generated notification", uuid: UUID(), timestamp: Date()))
    }
}
