//
//  RemoteConfigManagerProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 26/2/26.
//

@MainActor
public protocol FHKRemoteConfigManagerProtocol: FHKInjectableProtocol {
    var enabledLanguages: [String] { get }
    func fetchConfig() async throws
    func getCachedTimeExpiration() async -> Int
}
