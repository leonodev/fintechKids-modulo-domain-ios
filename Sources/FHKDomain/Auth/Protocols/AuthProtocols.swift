//
//  AuthProtocols.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

//public protocol FHKSupabaseProtocol: FHKInjectableProtocol {
//    func loginUser(email: String, password: String) async throws -> AuthResponseProtocol
//    func logoutUser() async throws
//    func refreshSession() async throws -> AuthResponseProtocol
//    func registerUser(email: String, password: String) async throws -> AuthResponse
//    func setSession(accessToken: String) async throws
//    func getClient() -> SupabaseClient
//
//    // MARK: - User Data
//    var isUserAuthenticated: Bool { get async }
//}

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


//public protocol AuthResponseProtocol: Sendable {
//    var accessToken: String? { get }
//    var userID: String { get }
//}
//
//
//import Foundation

//public struct FHKUserSession: Sendable {
//    public let userID: String
//    public let email: String
//    public let accessToken: String
//    public let refreshToken: String
//    public let expiresAt: Date?
//    
//    public init(
//        userID: String,
//        email: String,
//        accessToken: String,
//        refreshToken: String,
//        expiresAt: Date? = nil
//    ) {
//        self.userID = userID
//        self.email = email
//        self.accessToken = accessToken
//        self.refreshToken = refreshToken
//        self.expiresAt = expiresAt
//    }
//}

