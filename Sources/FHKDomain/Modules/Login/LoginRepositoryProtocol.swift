//
//  LoginRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/3/26.
//

public protocol FHKLoginRepositoryProtocol: FHKInjectableProtocol {
    func login(email: String, pwd: String) async throws -> String?
    func loginWithBiometrics(prompt: String) async throws
    func saveAuthToken(_ token: String, requiresBiometry: Bool) throws
    func saveUserIntoKeychain(email: String) async throws
    
    func updateParentMail()
    var hasSavedToken: Bool { get }
}
