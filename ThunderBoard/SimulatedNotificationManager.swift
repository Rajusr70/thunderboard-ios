//
//  SimulatedNotificationManager.swift
//  ThunderBoard
//
//  Copyright © 2016 Silicon Labs. All rights reserved.
//

import Foundation

class SimulatedNotificationManager : NotificationManager {
    
    var notificationsEnabled: Bool {
        get { return settings.beaconNotifications }
        set (newValue) { settings.beaconNotifications = newValue }
    }
    
    private let settings = ThunderBoardSettings()
    weak var delegate: NotificationManagerDelegate?
    weak var presenter: NotificationPresenter?
    
    func enableNotifications(enable: Bool) {
        notificationsEnabled = enable
        self.delegate?.notificationsEnabled(self.notificationsEnabled)
    }
    
    func allowDevice(device: NotificationDevice) {
        //
    }
    
    func removeDevice(device: NotificationDevice) {
        //
    }
    
    func removeAllDevices() {
        //
    }
    
    func allowedDevices() -> [NotificationDevice] {
        return notificationsEnabled ? [
            NotificationDevice(name: "hi", identifier: 0),
            NotificationDevice(name: "bye", identifier: 0),
        ] : [ ]
    }
    
    func otherDevices() -> [NotificationDevice] {
        return []
    }
    
    func setConnectedDevices(devices: [Device]) {
        //
    }
}