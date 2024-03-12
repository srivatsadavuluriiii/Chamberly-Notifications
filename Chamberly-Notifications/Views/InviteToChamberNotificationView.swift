//
//  InviteToChamberNotification.swift
//  Chamberly-Notifications
//
//  Created by srivatsa davuluri on 12/03/24.
//




import SwiftUI

struct JoinChamberNotificationRow: View {
    var notification: JoinChamberNotification
    
    var body: some View {
        HStack {
            Image(notification.image)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading) {
                Text(notification.text)
                    .font(.system(size: 14))
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.1843137255, blue: 0.337254902, alpha: 1.0)))
                    .bold()
                    .multilineTextAlignment(.leading)
                

            }
            
            Spacer()
            
            Button(action: { }) {
                RoundedRectangle(cornerRadius: 113)
                    .fill(Color(red: 0.478, green: 0.478, blue: 1.0))
                    .frame(width: 60, height: 30)
                    .overlay(
                        Text("Join")
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                    )
            }
            
        }
        .padding(.vertical, 5)
    }
}

struct JoinChamberNotificationRow_Previews: PreviewProvider {
    static var previews: some View {
        JoinChamberNotificationRow(notification: JoinChamberNotification(image: "iram", text: "Jack is inviting you to join their chamber", uuid: UUID(), timestamp: Date()))
    }
}
