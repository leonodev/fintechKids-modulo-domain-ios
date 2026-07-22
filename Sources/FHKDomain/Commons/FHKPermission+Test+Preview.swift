//
//  FHKPermission+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 7/3/26.
//

public enum PermissionStatus {
    case notDetermined, authorized, denied
}

/*
public protocol FHKPermissionProtocol: Sendable {
    var title: String { get }
    var message: String { get }
    var status: PermissionStatus { get }
    var titleButtonSetting: String { get }
    var titleButtonLater: String { get }
    func requestPermission(completion: @escaping (PermissionStatus) -> Void)
}
*/

import Foundation

public struct FHKPermission: Sendable {
    public var title: @MainActor @Sendable () -> String = { "" }
    public var message: @MainActor @Sendable () -> String = { "" }
    public var status: @MainActor @Sendable () -> PermissionStatus = { .notDetermined }
    public var titleButtonSetting: @MainActor @Sendable () -> String = { "" }
    public var titleButtonLater: @MainActor @Sendable () -> String = { "" }
    public var requestPermission: @MainActor @Sendable () async -> PermissionStatus = { .denied }

    public init() {}
}


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
