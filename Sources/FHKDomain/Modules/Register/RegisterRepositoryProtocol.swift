//
//  RegisterRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 2/3/26.
//

public protocol RegisterRepositoryProtocol: FHKInjectableProtocol {
    func register(email: String, password: String) async throws -> FHKUserSession
    func saveUserIntoKeychain(email: String) async throws
    func getParentMail() async -> String?
}
