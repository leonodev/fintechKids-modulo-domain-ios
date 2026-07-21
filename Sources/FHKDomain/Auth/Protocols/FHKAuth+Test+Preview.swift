//
//  AuthProtocols.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

/*
public protocol FHKAuthProtocol: FHKInjectableProtocol {
    // Usamos nuestro modelo propio: FHKUserSession
    func login(loginEntity: LoginEntity) async throws -> FHKUserSession
    func logout() async throws
    func refreshSession(emailParent: String) async throws -> FHKUserSession
    func register(registerEntity: RegisterUserEntity) async throws -> FHKUserSession
    func setSession(accessToken: String) async throws

    // MARK: - User Data
    var isUserAuthenticated: Bool { get async }
}
*/

public struct FHKAuth: Sendable {
    public var login: @Sendable (LoginEntity) async throws -> FHKUserSession = { _ in
        throw FHKSupabaseError.notImplemented
    }
    public var logout: @Sendable () async throws -> Void = {}
    public var refreshSession: @Sendable (String) async throws -> FHKUserSession = { _ in
        throw FHKSupabaseError.notImplemented
    }
    public var register: @Sendable (RegisterUserEntity) async throws -> FHKUserSession = { _ in
        throw FHKSupabaseError.notImplemented
    }
    public var setSession: @Sendable(String) async throws -> Void = {  _ in }
    public var isUserAuthenticated: @Sendable () async -> Bool = { false }
    
    public init() {}
}


public extension FHKAuth {
    static var test: Self {
        Self()
    }
}
