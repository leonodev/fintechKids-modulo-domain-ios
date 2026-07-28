//
//  FHKPermission.swift
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
