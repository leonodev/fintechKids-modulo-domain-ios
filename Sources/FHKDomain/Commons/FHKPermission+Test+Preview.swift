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
    public var title: @Sendable () -> String = { "" }
    public var message: @Sendable () -> String = { "" }
    public var status: @MainActor @Sendable () -> PermissionStatus = { .notDetermined }
    public var titleButtonSetting: @Sendable () -> String = { "" }
    public var titleButtonLater: @Sendable () -> String = { "" }
    public var requestPermission: @MainActor @Sendable () async -> PermissionStatus = { .denied }

    public init() {}
}


public extension FHKPermission {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var mock = FHKPermission()
        
        mock.title = { "Notification Permission" }
        mock.message = { "We need this permission to notify you when you receive a payment." }
        mock.titleButtonSetting = { "Ir a Ajustes" }
        mock.titleButtonLater = { "Not now" }
        mock.status = { .notDetermined }
        mock.requestPermission = { .authorized }
        
        return mock
    }
    
    /// Preset para probar en Previews el escenario "Permiso Concedido"
    static var authorized: Self {
        var mock = FHKPermission.preview
        mock.status = { .authorized }
        return mock
    }
    
    /// Preset para probar en Previews el escenario "Permiso Denegado" (muestra el botón a Ajustes)
    static var denied: Self {
        var mock = FHKPermission.preview
        mock.status = { .denied }
        return mock
    }
}
