//
//  FHKSplashRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/3/26.
//

public protocol FHKSplashRepositoryProtocol: FHKInjectableProtocol {
    func readLanguageCurrent() async throws -> String?
}
