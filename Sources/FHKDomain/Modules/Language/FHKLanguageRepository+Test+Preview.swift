//
//  FHKLanguageRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 3/3/26.
//

/*
public protocol FHKLanguageRepositoryProtocol: FHKInjectableProtocol {
    func fetchConfig() async -> [String]
    func changeLanguageApp(_ language: String) async
}
*/

public struct FHKLanguageRepository: Sendable {
    var fetchConfig: @Sendable() async -> [String] = { [] }
    var changeLanguageApp: @Sendable(String) async -> Void = { _ in }
    
    public init() {}
}

public extension FHKLanguageRepository {
    static var test: Self {
       Self()
    }
}

