//
//  KeychainProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public protocol FHKKeychainProtocol: Sendable {
    func save<T: Codable & Sendable>(_ value: T,
                                     for key: String,
                                     requireBiometry: Bool) throws
    func read<T: Decodable & Sendable>(_ type: T.Type,
                                        for key: String,
                                        prompt: String?) throws -> T?
    func delete(_ key: String) throws
    func contains(_ key: String) -> Bool
    func clearAll() throws
}
