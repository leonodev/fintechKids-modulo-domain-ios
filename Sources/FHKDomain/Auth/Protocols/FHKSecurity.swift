//
//  FHKSecurity.swift
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

public struct FHKSecurity: Sendable {
    public var getBiometryType: @Sendable () -> BiometryType = { .none }
    public var getAnonKey: @Sendable () throws -> String = { "" }
    public var biometryIcon: @Sendable () throws -> String = { "" }
    
    public init() {}
}


public extension FHKSecurity {
    static var test: Self {
        Self()
    }
}
