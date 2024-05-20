//
//  SWIFTUIExpandedListApp.swift
//  SWIFTUIExpandedList
//
//  Created by Yogini Unde on 20/05/24.
//

import SwiftUI

@main
struct SWIFTUIExpandedListApp: App {
    @StateObject var csManager = ColorSchemeManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(csManager)
                .onAppear {
                     //UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                    csManager.applyColorScheme()
                }

        }
    }
}
