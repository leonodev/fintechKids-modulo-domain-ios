//
//  LoginRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/3/26.
//

/*
public protocol FHKLoginRepository: FHKInjectableProtocol {
    func login(loginEntity: LoginEntity) async throws -> FHKUserSession?
    func loginWithBiometrics(prompt: String) async throws
    func saveAuthToken(_ token: String, requiresBiometry: Bool) throws
    func saveUserIntoKeychain(email: String) async throws
    func savePinApproveTask(pin: String) async throws
    
    func refreshParentMail()
    var hasSavedToken: Bool { get }
}
*/

import Foundation

public struct FHKLoginRepository: Sendable {
    public var login: @Sendable (_ loginEntity: LoginEntity) async throws -> FHKUserSession? = { _ in nil }
    public var loginWithBiometrics: @Sendable (_ prompt: String) async throws -> Void = { _ in }
    public var saveAuthToken: @Sendable (_ token: String,
                                         _ requiresBiometry: Bool) throws -> Void = { _, _ in }
    public var saveUserIntoKeychain: @Sendable (_ email: String) async throws -> Void = { _ in }
    public var savePinApproveTask: @Sendable (_ pin: String) async throws -> Void = { _ in }
    public var refreshParentMail: @Sendable () -> Void = {}
    public var hasSavedToken: @Sendable () -> Bool = { false }

    public init() {}
}


public extension FHKLoginRepository {
    static var test: Self {
        Self()
    }
}
