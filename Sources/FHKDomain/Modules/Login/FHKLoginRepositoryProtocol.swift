//
//  LoginRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/3/26.
//

public protocol FHKLoginRepositoryProtocol {
    func login(email: String, pwd: String) async throws -> String?
    func loginWithBiometrics(prompt: String) async throws -> String
    func saveAuthToken(_ token: String, requiresBiometry: Bool) throws
    var hasSavedToken: Bool { get }
}
