//
//  SettingsView.swift
//  Chamberly-Notifications
//
//  Created by srivatsa davuluri on 13/03/24.
//

import SwiftUI

struct SettingsView: View {
    init() {
        UITableView.appearance().backgroundColor = .red
        }
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Chamber").textCase(.none)) {
                    // Chamber settings options
                    SettingsOptionRow(title: "Show notificaitons")
                    SettingsOptionRow1(title: "Chamber Settings ",text: "Message notifications from followers")
                    SettingsOptionRow1(title: "Personal chat notifications",text: "Message notifications from followers")
                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
                
                Section(header: Text("Community").textCase(.none)) {
                    SettingsOptionRow(title: "Show notificaitons")
                    SettingsOptionRow1(title: "Mentions",text: "Show notification when someone mentioned you in communities")
                    SettingsOptionRow1(title: "Replies",text: "Send notification when someone mentions you in communities")
                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
                
                Section(header: Text("App").textCase(.none)) {
                    // App settings options
                    SettingsOptionRow1(title: "Push notifications",text: "Chamberly and chamber plus notifications")
                    SettingsOptionRow1(title: "Journal",text: "Send reminders to write journals")
                    SettingsOptionRow1(title: "Activity",text: "Send reminders to Complete Activities")
                    
                }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
            }
            
            
        }.navigationTitle("Notification Settings")
    }
}

//
//struct SettingsView: View {
//    var body: some View {
//        Text("Settings Page")
//            .navigationTitle("Settings")
//    }
//}
//



#Preview {
    SettingsView()
}
