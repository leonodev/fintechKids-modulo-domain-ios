//
//  StorageManagerProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public protocol FHKStorageManagerProtocol: Sendable {
    func saveUserDefaults<T: Encodable & Sendable>(_ value: T, forKey key: String) async throws
    func readUserDefaults<T: Decodable & Sendable>(_ type: T.Type, forKey key: String) async throws -> T?
    func updateUserDefaults<T>(_ type: T.Type,
                   forKey key: String,
                   update: @Sendable (T?) -> T?) async throws where T: Decodable, T: Encodable, T: Sendable
    func deleteUserDefaults(forKey key: String) async throws
    func saveKeychain<T: Codable & Sendable>(_ value: T,
                                             for key: String,
                                             requireBiometry: Bool) throws
    func readKeychain<T: Decodable & Sendable>(_ type: T.Type,
                                               for key: String,
                                               prompt: String?) throws -> T?
    func deleteKeychain(_ key: String) throws
    func containsKeychain(_ key: String) -> Bool
    func clearAllKeychain() throws
    func isBiometryAvailable() -> Bool
    func exists(key: String) -> Bool
}

// Setting default require biometry
public extension FHKStorageManagerProtocol {
    func saveKeychain<T: Codable & Sendable>(_ value: T, for key: String) throws {
        try saveKeychain(value, for: key, requireBiometry: false)
    }
}
