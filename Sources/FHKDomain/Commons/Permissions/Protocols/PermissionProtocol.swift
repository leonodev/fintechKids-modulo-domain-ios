//
//  PermissionProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 26/2/26.
//


public enum PermissionStatus {
    case notDetermined, authorized, denied
}

public protocol FHKPermissionProtocol: FHKInjectableProtocol {
    var title: String { get }
    var message: String { get }
    var status: PermissionStatus { get }
    var titleButtonSetting: String { get }
    var titleButtonLater: String { get }
    func requestPermission(completion: @escaping (PermissionStatus) -> Void)
}
