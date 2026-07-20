//
//  FHKRemoteConfig+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 26/2/26.
//

/*
@MainActor
public protocol FHKRemoteConfigManagerProtocol: FHKInjectableProtocol {
    var enabledLanguages: [String] { get }
    var menuHomeItems: [MenuHomeItem] { get }
    func fetchConfig() async throws
    func getCachedTimeExpiration() async -> Int
}
*/

@MainActor
public struct FHKRemoteConfig: Sendable {
    public var enabledLanguages: @Sendable() -> [String] = { [] }
    public var menuHomeItems: @Sendable() -> [MenuHomeItem] = { [] }
    public var fetchConfig: @Sendable() async throws -> Void = { }
    public var getCachedTimeExpiration: @Sendable() async -> Int = { 3 /* Minutes */ }
    
    public init() {}
}


public extension FHKRemoteConfig {
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var config = Self()
        
        config.enabledLanguages = { ["en", "es"] }
        
        config.menuHomeItems = { [
            MenuHomeItem(id: 1,
                         name: "payments",
                         icon: "payments-icon",
                         label_localized_key: "key_payments_title",
                         active: true)
            ]
        }
        
        config.fetchConfig = {}
        
        config.getCachedTimeExpiration = { 1 /* Minutes */  }
        
        return config
    }
}
