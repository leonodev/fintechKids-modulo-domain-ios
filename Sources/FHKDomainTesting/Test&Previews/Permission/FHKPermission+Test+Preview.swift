//
//  FHKPermission+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKPermission {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var mock = FHKPermission()
        mock.status = { .authorized }
        mock.requestPermission = { .authorized }
        
        return mock
    }
    
    /// To test the "Permission notDetermined" scenario in Previews
    static var notDetermined: Self {
        var mock = Self()
        mock.title = { "Permission not determined" }
        mock.message = { "We need access to the camera to continue." }
        mock.titleButtonSetting = { "Go to Settings" }
        mock.titleButtonLater = { "Not now" }
        
        mock.status = { .notDetermined }
        return mock
    }
    
    /// To test the "Permission Denied" scenario in Previews (displays the button to Settings)
    static var denied: Self {
        var mock = Self()
        mock.title = { "Permission Denied" }
        mock.message = { "You have disabled camera permission." }
        mock.titleButtonSetting = { "Go to Settings" }
        mock.titleButtonLater = { "Not now" }
        mock.status = { .denied }
        return mock
    }
}
