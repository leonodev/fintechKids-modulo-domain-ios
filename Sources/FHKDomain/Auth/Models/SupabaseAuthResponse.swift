//
//  SupabaseAuthResponse.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Supabase

public struct SupabaseAuthResponse: Sendable, AuthResponseProtocol {
    public let accessToken: String?
    public let refreshToken: String?
    public let userID: String
    public let email: String

    public let expiresIn: Double
    public let expiresAt: Double

    /// Inicializador que transforma el objeto 'Session' del SDK de Supabase
    /// en nuestro modelo interno.
    public init(session: Session) {
        self.accessToken = session.accessToken
        self.refreshToken = session.refreshToken
        self.expiresIn = session.expiresIn
        self.expiresAt = session.expiresAt
        
        // Extraemos datos del objeto User de Supabase
        self.userID = session.user.id.uuidString
        self.email = session.user.email ?? ""
    }
}
