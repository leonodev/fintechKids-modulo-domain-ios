//
//  RegisterRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 2/3/26.
//

public protocol RegisterRepositoryProtocol: FHKInjectableProtocol {
    func register(email: String, password: String, familyName: String) async throws -> FHKUserSession
}
