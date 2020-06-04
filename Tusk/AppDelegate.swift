//
//  AppDelegate.swift
//  Tusk
//
//  Created by Juan Valera on 6/4/20.
//  Copyright © 2020 Juan Valera. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem:NSStatusItem = NSStatusItem()
    var itemWidth:CGFloat = CGFloat(integerLiteral: 22)

    func applicationDidFinishLaunching(_ aNotification: Notification) {
//      status item automatically creates button
        self.statusItem = NSStatusBar.system.statusItem(withLength: itemWidth)
        
//      set button image
        self.statusItem.button?.image = NSImage(named:"Headphones")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}
