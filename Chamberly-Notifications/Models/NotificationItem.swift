//
//  NotificationItem.swift
//  Chamberly-Notifications
//
//  Created by srivatsa davuluri on 12/03/24.
//

import Foundation


protocol NotificationItem {
    var image: String { get }
    var name: String? { get }
    var text: String { get }
    var uuid: UUID { get }
    var timestamp: Date? { get }
}

