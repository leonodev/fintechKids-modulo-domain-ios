//
//  RegisterRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 2/3/26.
//

public protocol RegisterRepositoryProtocol: FHKInjectableProtocol {
    func register(registerEntity: RegisterUserEntity) async throws -> FHKUserSession
    func saveFamilyInfoKeychain(familyName: String) throws
}
