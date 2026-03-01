//
//  RemoteConfigManagerProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 26/2/26.
//

@MainActor
public protocol FHKRemoteConfigManagerProtocol: FHKInjectableProtocol {
    var enabledLanguages: [String] { get }
    func fetchConfig(completion: @escaping (Error?) -> Void)
}
