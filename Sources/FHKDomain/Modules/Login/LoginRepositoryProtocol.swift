//
//  LoginRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/3/26.
//

public protocol FHKLoginRepositoryProtocol: FHKInjectableProtocol {
    func login(loginEntity: LoginEntity) async throws -> FHKUserSession?
    func loginWithBiometrics(prompt: String) async throws
    func saveAuthToken(_ token: String, requiresBiometry: Bool) throws
    func saveUserIntoKeychain(email: String) async throws
    
    func refreshParentMail()
    var hasSavedToken: Bool { get }
}
