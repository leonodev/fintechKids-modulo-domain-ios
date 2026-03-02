//
//  RegisterRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 2/3/26.
//

public protocol RegisterRepositoryProtocol {
    func register(email: String, password: String) async throws -> FHKUserSession
    func saveUserIntoKeychain() async
}
