//
//  UserSession.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//


//public struct SupabaseAuthResponse: Sendable, AuthResponseProtocol {
//    public let accessToken: String?
//    public let refreshToken: String?
//    public let userID: String
//    public let email: String
//
//    public let expiresIn: Double
//    public let expiresAt: Double
//
//    /// Inicializador que transforma el objeto 'Session' del SDK de Supabase
//    /// en nuestro modelo interno.
//    public init(session: Session) {
//        self.accessToken = session.accessToken
//        self.refreshToken = session.refreshToken
//        self.expiresIn = session.expiresIn
//        self.expiresAt = session.expiresAt
//        
//        // Extraemos datos del objeto User de Supabase
//        self.userID = session.user.id.uuidString
//        self.email = session.user.email ?? ""
//    }
//}


import Foundation

public struct FHKUserSession: Sendable {
    public let id: UUID
    public let email: String
    public let accessToken: String?
    public let refreshToken: String?
    public let expiresAt: Date?
    
    // Propiedad calculada para saber si realmente puede navegar por la app
    public var hasActiveSession: Bool {
        return accessToken != nil
    }

    public init(id: UUID,
                email: String,
                accessToken: String? = nil,
                refreshToken: String? = nil,
                expiresAt: Date? = nil
    ) {
        self.id = id
        self.email = email
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.expiresAt = expiresAt
    }
}
