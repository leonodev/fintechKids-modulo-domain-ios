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
    public var isAuthenticated: @Sendable () -> Bool = { false }
    public var setIsAuthenticated: @Sendable (Bool) -> Void = { _ in }
    
    public var initializeSession: @Sendable () async -> Void = { }
    public var login: @Sendable () async throws -> Void = { }
    public var logout: @Sendable () async throws -> Void = { }
    
    public init(
            isAuthenticated: @escaping @Sendable () -> Bool = { false },
            setIsAuthenticated: @escaping @Sendable (Bool) -> Void = { _ in },
            initializeSession: @escaping @Sendable () async -> Void = {},
            login: @escaping @Sendable () async throws -> Void = {},
            logout: @escaping @Sendable () async throws -> Void = {}
    ) {
        self.isAuthenticated = isAuthenticated
        self.setIsAuthenticated = setIsAuthenticated
        self.initializeSession = initializeSession
        self.login = login
        self.logout = logout
    }
}

public extension FHKSession {
    static var test: Self {
        Self()
    }
}
