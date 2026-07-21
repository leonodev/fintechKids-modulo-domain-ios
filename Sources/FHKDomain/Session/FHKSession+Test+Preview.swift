//
//  FHKSession+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 10/6/26.
//

import Foundation

/*
 public protocol FHKSessionManagerProtocol: FHKInjectableProtocol {
 var isAuthenticated: Bool { set get }
 func initializeSession() async
 func login() async throws
 func logout() async throws
 }
 */

public struct FHKSession: Sendable {
    public var isAuthenticated: @Sendable (Bool) -> Void = { _ in }
    public var initializeSession: @Sendable () async -> Void = { }
    public var login: @Sendable () async throws -> Void = { }
    public var logout: @Sendable () async throws -> Void = { }
    
    public init() {}
}

public extension FHKSession {
    static var test: Self {
        Self()
    }
}
