//
//  AuthProtocols.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation
import Supabase

public protocol FHKSupabaseProtocol: FHKInjectableProtocol {
    func loginUser(email: String, password: String) async throws -> AuthResponseProtocol
    func logoutUser() async throws
    func refreshSession() async throws -> AuthResponseProtocol
    func registerUser(email: String, password: String) async throws -> AuthResponse
    func setSession(accessToken: String) async throws
    func getClient() -> SupabaseClient

    // MARK: - User Data
    var isUserAuthenticated: Bool { get async }
}


public protocol AuthResponseProtocol: Sendable {
    var accessToken: String? { get }
    var userID: String { get }
}
