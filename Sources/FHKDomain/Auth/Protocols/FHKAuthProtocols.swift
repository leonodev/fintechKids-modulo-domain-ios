//
//  AuthProtocols.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public protocol FHKAuthProtocol: FHKInjectableProtocol {
    // Usamos nuestro modelo propio: FHKUserSession
    func login(email: String, password: String) async throws -> FHKUserSession
    func logout() async throws
    func refreshSession() async throws -> FHKUserSession
    func register(email: String, password: String) async throws -> FHKUserSession
    func setSession(accessToken: String) async throws

    // MARK: - User Data
    var isUserAuthenticated: Bool { get async }
}
