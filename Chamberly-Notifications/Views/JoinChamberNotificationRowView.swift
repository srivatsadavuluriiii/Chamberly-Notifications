//
//  djknssdf.swift
//  Chamberly-Notifications
//
//  Created by srivatsa davuluri on 12/03/24.
//

import SwiftUI

struct InviteToChamberNotificationView: View {
    var notification: NotificationItem
    
    var body: some View {
        HStack{
            Image(notification.image)
                .resizable()
                .frame(width: 40, height: 40)
            
            HStack (spacing: 80){
                VStack(alignment: .leading,spacing: 2) {
                    if let name = notification.name {
                        Text(name)
                            .font(.headline)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.1843137255, blue: 0.337254902, alpha: 1.0)))
                    }
                    
                    Text(notification.text)
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                        
                }
                
                Button(action: {}, label: {
                    Image("connect")
                })
            }
            
      
            
            
            
            Spacer()
            
            Text(notification.timestamp ?? Date(), style: .time)
                .font(.system(size: 8))
                .foregroundColor(.gray)
                .padding(.top, 5)
        }
        .padding(.vertical, 5)
    }
}



struct InviteToChamberNotification_Previews: PreviewProvider {
    static var previews: some View {
        InviteToChamberNotificationView(notification: InviteToChamberNotification(image: "iram", name: "Cindy", text: "Joined your Chamber!", uuid: UUID(), timestamp: Date()))
    }
}


