//
//  KeychainKeys.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

public struct KeychainKeys {
    private init() {}
}

public extension KeychainKeys {
    static let userKey = "user_key"
}

public enum KeychainKey: String, CaseIterable, Sendable {
    case authToken
    case refreshToken
    case userCredentials
    case appSettings
    case biometricData
    case appLanguage
}
