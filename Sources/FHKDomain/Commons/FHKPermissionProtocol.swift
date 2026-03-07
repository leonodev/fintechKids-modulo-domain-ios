//
//  FHKPermissionProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 7/3/26.
//

public enum PermissionStatus {
    case notDetermined, authorized, denied
}

public protocol FHKPermissionProtocol: Sendable {
    var title: String { get }
    var message: String { get }
    var status: PermissionStatus { get }
    var titleButtonSetting: String { get }
    var titleButtonLater: String { get }
    func requestPermission(completion: @escaping (PermissionStatus) -> Void)
}
