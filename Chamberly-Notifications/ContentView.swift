//
//  ContentView.swift
//  Chamberly-Notifications
//
//  Created by srivatsa davuluri on 12/03/24.
//
//
//
//import SwiftUI
//
//struct ContentView: View {
//    // Sample data for demonstration
//    let notifications: [NotificationItem] = [
//        JoinChamberNotification(image: "cui",text: "Cui Yen is inviting you to their chamber", uuid: UUID(), timestamp: Date()),
//        BadgeNotification(image: "john", name: "Jane Doe", text: "Gave you a super badge! ", uuid: UUID(), timestamp: Date()),
//        InviteToChamberNotification(image: "cui", name: "Alice Smith", text: "joined your Chamber!", uuid: UUID(), timestamp: Date()),
//        InviteToChamberNotification(image: "cui", name: "Alice Smith", text: "joined your Chamber!", uuid: UUID(), timestamp: Date()),
//        SystemGeneratedNotification(image: "logo", text: "What’s up! don’t forget to add journal", uuid: UUID(), timestamp: Date()),
//        JoinChamberNotification(image: "iram", text: "Jack is inviting you to join their chamber", uuid: UUID(), timestamp: Date())
//    ]
//    
//    var body: some View {
//        NavigationView {
//            List {
//                Section(header: Text("Today").textCase(.none)) {
//                    ForEach(notifications.filter { isDateInToday($0.timestamp ?? Date()) }, id: \.uuid) { notification in
//                        if let inviteNotification = notification as? InviteToChamberNotification {
//                            InviteToChamberNotificationView(notification: inviteNotification)
//                        } else if let badgeNotification = notification as? BadgeNotification {
//                            BadgeNotificationView(notification: badgeNotification)
//                        } else if let systemNotification = notification as? SystemGeneratedNotification {
//                            SystemGeneratedNotificationRow(notification: systemNotification)
//                        } else if let joinNotification = notification as? JoinChamberNotification {
//                            JoinChamberNotificationRow(notification: joinNotification)
//                        }
//                    }
//                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
//                
//                Section(header: Text("Yesterday").textCase(.none)) {
//                    ForEach(notifications.filter { isDateInYesterday($0.timestamp ?? Date()) }, id: \.uuid) { notification in
//                        if let joinNotification = notification as? JoinChamberNotification {
//                            JoinChamberNotificationRow(notification: joinNotification)
//                        }
//                    }
//                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
//                
//                Section(header: Text("Last 7 Days").textCase(.none)) {
//                    ForEach(notifications.filter { isDateInLast7Days($0.timestamp ?? Date()) }, id: \.uuid) { notification in
//                        if let joinNotification = notification as? JoinChamberNotification {
//                            JoinChamberNotificationRow(notification: joinNotification)
//                        }
//                    }
//                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
//                
//                Section(header: Text("Older Notifications").textCase(.none)) {
//                    ForEach(notifications.filter { !isDateInToday($0.timestamp ?? Date()) && !isDateInYesterday($0.timestamp ?? Date()) && !isDateInLast7Days($0.timestamp ?? Date()) }, id: \.uuid) { notification in
//                        if let inviteNotification = notification as? InviteToChamberNotification {
//                            InviteToChamberNotificationView(notification: inviteNotification)
//                        } else if let systemNotification = notification as? SystemGeneratedNotification {
//                            SystemGeneratedNotificationRow(notification: systemNotification)
//                        } else if let joinNotification = notification as? JoinChamberNotification {
//                            JoinChamberNotificationRow(notification: joinNotification)
//                        }
//                    }
//                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
//            }
//            .navigationBarTitle("Notifications", displayMode: .inline)
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Button(action: {}) {
//                        Image("back")
//                    }
//                }
//                
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button(action: {}) {
//                        Image("settings")
//                    }
//                }
//            }
//            .listStyle(InsetGroupedListStyle())
//        }
//    }
//    
//    func isDateInToday(_ date: Date) -> Bool {
//        return Calendar.current.isDateInToday(date)
//    }
//    
//    func isDateInYesterday(_ date: Date) -> Bool {
//        return Calendar.current.isDateInYesterday(date)
//    }
//    
//    func isDateInLast7Days(_ date: Date) -> Bool {
//        return Calendar.current.dateComponents([.day], from: date, to: Date()).day ?? 0 < 7
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

//import SwiftUI
//
//struct ContentView: View {
//    lazy var yesterday: Date = {
//            return Calendar.current.date(byAdding: .day, value: -1, to: Date())!
//        }()
//    // Sample data for demonstration
//    let notifications: [NotificationItem] = [
//        JoinChamberNotification(image: "cui",text: "Cui Yen is inviting you to their chamber", uuid: UUID(), timestamp: Date()),
//        BadgeNotification(image: "john", name: "Jane Doe", text: "Gave you a super badge! ", uuid: UUID(), timestamp: Date()),
//        InviteToChamberNotification(image: "cui", name: "Alice Smith", text: "joined your Chamber!", uuid: UUID(), timestamp: Date()),
//        InviteToChamberNotification(image: "cui", name: "Alice Smith", text: "joined your Chamber!", uuid: UUID(), timestamp: yesterday),
//        SystemGeneratedNotification(image: "logo", text: "What’s up! don’t forget to add journal", uuid: UUID(), timestamp: Date().addingTimeInterval(-86400)),
//        JoinChamberNotification(image: "iram", text: "Jack is inviting you to join their chamber", uuid: UUID(), timestamp: Date().addingTimeInterval(-518400))
//    ]
//    
//    var body: some View {
//        NavigationView {
//            List {
//                Section(header: Text("Today").textCase(.none)) {
//                    ForEach(notifications.filter { isDateInToday($0.timestamp ?? Date()) }, id: \.uuid) { notification in
//                        if let inviteNotification = notification as? InviteToChamberNotification {
//                            InviteToChamberNotificationView(notification: inviteNotification)
//                        } else if let badgeNotification = notification as? BadgeNotification {
//                            BadgeNotificationView(notification: badgeNotification)
//                        } else if let systemNotification = notification as? SystemGeneratedNotification {
//                            SystemGeneratedNotificationRow(notification: systemNotification)
//                        } else if let joinNotification = notification as? JoinChamberNotification {
//                            JoinChamberNotificationRow(notification: joinNotification)
//                        }
//                    }
//                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
//                
//                Section(header: Text("Yesterday").textCase(.none)) {
//                    ForEach(notifications.filter { isDateInYesterday($0.timestamp ?? Date()) }, id: \.uuid) { notification in
//                        if let joinNotification = notification as? JoinChamberNotification {
//                            JoinChamberNotificationRow(notification: joinNotification)
//                        }
//                    }
//                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
//                
//                Section(header: Text("Last 7 Days").textCase(.none)) {
//                    ForEach(notifications.filter { isDateInLast7Days($0.timestamp ?? Date()) }, id: \.uuid) { notification in
//                        if let joinNotification = notification as? JoinChamberNotification {
//                            JoinChamberNotificationRow(notification: joinNotification)
//                        }
//                    }
//                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
//                
//                Section(header: Text("Older Notifications").textCase(.none)) {
//                    ForEach(notifications.filter { !isDateInToday($0.timestamp ?? Date()) && !isDateInYesterday($0.timestamp ?? Date()) && !isDateInLast7Days($0.timestamp ?? Date()) }, id: \.uuid) { notification in
//                        if let inviteNotification = notification as? InviteToChamberNotification {
//                            InviteToChamberNotificationView(notification: inviteNotification)
//                        } else if let systemNotification = notification as? SystemGeneratedNotification {
//                            SystemGeneratedNotificationRow(notification: systemNotification)
//                        } else if let joinNotification = notification as? JoinChamberNotification {
//                            JoinChamberNotificationRow(notification: joinNotification)
//                        }
//                    }
//                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
//            }
//            .navigationBarTitle("Notifications", displayMode: .inline)
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Button(action: {}) {
//                        Image("back")
//                    }
//                }
//                
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button(action: {}) {
//                        Image("settings")
//                    }
//                }
//            }
//            .listStyle(InsetGroupedListStyle())
//        }
//    }
//    
//    func isDateInToday(_ date: Date) -> Bool {
//        return Calendar.current.isDateInToday(date)
//    }
//    
//    func isDateInYesterday(_ date: Date) -> Bool {
//            let today = Calendar.current.startOfDay(for: Date())
//            let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
//            return Calendar.current.isDate(date, inSameDayAs: yesterday)
//        }
//
//    
//    func isDateInLast7Days(_ date: Date) -> Bool {
//        let sixDaysAgo = Calendar.current.date(byAdding: .day, value: -6, to: Date())!
//        return date >= sixDaysAgo && date < Date()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}




import SwiftUI

struct ContentView: View {
    
    @State private var showSettingsPage = false
    var notifications: [NotificationItem] {

        let yesterdayNotification = InviteToChamberNotification(image: "cui", name: "Alice Smith", text: "joined your Chamber!", uuid: UUID(), timestamp: yesterday)
        

        let todayNotifications: [NotificationItem] = [
            JoinChamberNotification(image: "cui", text: "Cui Yen is inviting you to their chamber", uuid: UUID(), timestamp: Date()),
            BadgeNotification(image: "john", name: "Jane Doe", text: "Gave you a super badge! ", uuid: UUID(), timestamp: Date()),
            SystemGeneratedNotification(image: "logo", text: "What’s up! don’t forget to add journal", uuid: UUID(), timestamp: Date())
        ]
        

        return todayNotifications + [yesterdayNotification] + [
            InviteToChamberNotification(image: "cui", name: "Alice Smith", text: "joined your Chamber!", uuid: UUID(), timestamp: Date()),
            SystemGeneratedNotification(image: "logo", text: "What’s up! don’t forget to add journal", uuid: UUID(), timestamp: Date().addingTimeInterval(-86400)),
            JoinChamberNotification(image: "iram", text: "Jack is inviting you to join their chamber", uuid: UUID(), timestamp: Date().addingTimeInterval(-86400)),
            BadgeNotification(image: "john", name: "Jane Doe", text: "Gave you a super badge! ", uuid: UUID(), timestamp: Date().addingTimeInterval(-86400))
            
        ]
    }
    
    var yesterday: Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: Date())!
    }
    
    var body: some View {
        NavigationView {
            List {
    
                Section(header: Text("Today").textCase(.none)) {
                    ForEach(notifications.filter { isDateInToday($0.timestamp ?? Date()) }, id: \.uuid) { notification in
                        if let inviteNotification = notification as? InviteToChamberNotification {
                            InviteToChamberNotificationView(notification: inviteNotification)
                        } else if let badgeNotification = notification as? BadgeNotification {
                            BadgeNotificationView(notification: badgeNotification)
                        } else if let systemNotification = notification as? SystemGeneratedNotification {
                            SystemGeneratedNotificationRow(notification: systemNotification)
                        } else if let joinNotification = notification as? JoinChamberNotification {
                            JoinChamberNotificationRow(notification: joinNotification)
                        }
                    }
                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
                
                Section(header: Text("Yesterday").textCase(.none)) {
                    ForEach(notifications.filter { isDateInYesterday($0.timestamp ?? Date()) }, id: \.uuid) { notification in
                        if let inviteNotification = notification as? InviteToChamberNotification {
                            InviteToChamberNotificationView(notification: inviteNotification)
                        } else if let badgeNotification = notification as? BadgeNotification {
                            BadgeNotificationView(notification: badgeNotification)
                        } else if let systemNotification = notification as? SystemGeneratedNotification {
                            SystemGeneratedNotificationRow(notification: systemNotification)
                        } else if let joinNotification = notification as? JoinChamberNotification {
                            JoinChamberNotificationRow(notification: joinNotification)
                        }
                    }
                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
                
                Section(header: Text("Last 7 Days").textCase(.none)) {
                    ForEach(notifications.filter { isDateInLast7Days($0.timestamp ?? Date()) }, id: \.uuid) { notification in
                        if let joinNotification = notification as? JoinChamberNotification {
                            JoinChamberNotificationRow(notification: joinNotification)
                        }
                    }
                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
                
                Section(header: Text("Older Notifications").textCase(.none)) {
                    ForEach(notifications.filter { !isDateInToday($0.timestamp ?? Date()) && !isDateInYesterday($0.timestamp ?? Date()) && !isDateInLast7Days($0.timestamp ?? Date()) }, id: \.uuid) { notification in
                        if let inviteNotification = notification as? InviteToChamberNotification {
                            InviteToChamberNotificationView(notification: inviteNotification)
                        } else if let systemNotification = notification as? SystemGeneratedNotification {
                            SystemGeneratedNotificationRow(notification: systemNotification)
                        } else if let joinNotification = notification as? JoinChamberNotification {
                            JoinChamberNotificationRow(notification: joinNotification)
                        }
                    }
                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
            }
            .navigationBarTitle("Notifications", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image("back")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showSettingsPage.toggle()
                    }) {
                        Image("settings")
                    }
                }
            }
            .toolbarBackground(Color(#colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9607843137, alpha: 1))
, for: .navigationBar)
            .listStyle(InsetGroupedListStyle())
            .background(
                            NavigationLink(
                                destination: SettingsView(),
                                isActive: $showSettingsPage,
                                label: {
                                    EmptyView()
                                })
                        )
        }
    }
    
    func isDateInToday(_ date: Date) -> Bool {
        return Calendar.current.isDateInToday(date)
    }
    
    func isDateInYesterday(_ date: Date) -> Bool {
        let today = Calendar.current.startOfDay(for: Date())
        let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        return Calendar.current.isDate(date, inSameDayAs: yesterday)
    }

    func isDateInLast7Days(_ date: Date) -> Bool {
        let sixDaysAgo = Calendar.current.date(byAdding: .day, value: -6, to: Date())!
        return date >= sixDaysAgo && date < Date()
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
