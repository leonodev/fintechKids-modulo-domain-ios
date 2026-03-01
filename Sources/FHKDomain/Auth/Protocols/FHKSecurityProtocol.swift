//
//  SecurityProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public enum BiometryType {
    case faceID
    case touchID
    case none
}

public protocol FHKSecurityProtocol: FHKInjectableProtocol {
    func getBiometryType() -> BiometryType
    func getAnonKey() throws -> String
    var biometryIcon: String { get } 
}
