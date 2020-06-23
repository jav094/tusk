//
//  AppDelegate.swift
//  Tusk
//
//  Created by Juan Valera on 6/4/20.
//  Copyright © 2020 Juan Valera. All rights reserved.
//

import Cocoa
import CoreBluetooth
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem:NSStatusItem = NSStatusItem()
    var itemWidth:CGFloat = CGFloat(integerLiteral: 22)
    var cm:CBCentralManager?
    let ID1:CBUUID = CBUUID.init(string: "1801")

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        self.cm = CBCentralManager(delegate: self, queue: nil)
        
//      status item automatically creates button
        self.statusItem = NSStatusBar.system.statusItem(withLength: itemWidth)
        
//      set button image
        self.statusItem.button?.image = NSImage(named:"Headphones")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}

extension AppDelegate: CBCentralManagerDelegate {

    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
        case .unknown:
            print("central.state is unknown")
        case .resetting:
            print("central.state is resetting")
        case .unsupported:
            print("central.state is unsupported")
        case .unauthorized:
            print("central.state is unauthorized")
        case .poweredOff:
            print("central.state is powered off")
        case .poweredOn:
            print("central.state is powered on. Scanning...")
            self.cm?.scanForPeripherals(withServices: nil)
//            self.cm?.scanForPeripherals(withServices: [self.ID1])
        @unknown default:
            print("central.state is unknown and special?")
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
            print(peripheral)
        }
}
