//
//  KCError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public enum KCError: Error, Sendable {
    case notFound
    case duplicate
    case unexpected(OSStatus)
    
    public static func from(status: OSStatus) -> Self {
        switch status {
        case errSecItemNotFound: .notFound
        case errSecDuplicateItem: .duplicate
        default: .unexpected(status)
        }
    }
}

extension KCError: CustomStringConvertible {
    public var description: String {
        switch self {
        case .notFound: "Keychain item not found"
        case .duplicate: "Duplicate keychain item"
        case .unexpected(let status): "Keychain error: \(status)"
        }
    }
}
