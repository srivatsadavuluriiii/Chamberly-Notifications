//
//  Models.swift
//  Chamberly-Notifications
//
//  Created by srivatsa davuluri on 12/03/24.
//

import Foundation


struct JoinChamberNotification: NotificationItem {
    let image: String
    var name: String? 
    let text: String
    let uuid: UUID
    var timestamp: Date?
}


