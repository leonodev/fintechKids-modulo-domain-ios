//
//  AuthServiceFactory.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

public protocol AuthServiceFactory: Sendable {
    func makeAuthService(for platform: AuthPlatform) throws -> any FHKSupabaseProtocol
}
