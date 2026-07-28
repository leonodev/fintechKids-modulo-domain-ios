//
//  UserDefaultsProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

/// Protocol that defines the public interface for persistence.
public protocol FHKUserDefaultsProtocol: Sendable {
    func save<T: Encodable & Sendable>(_ value: T, forKey key: String) async throws
    func read<T: Decodable & Sendable>(_ type: T.Type, forKey key: String) async throws -> T?
    func update<T>(_ type: T.Type, forKey key: String, update: @Sendable (T?) -> T?) async throws where T: Decodable, T: Encodable, T: Sendable
    func delete(forKey key: String) async throws
}
