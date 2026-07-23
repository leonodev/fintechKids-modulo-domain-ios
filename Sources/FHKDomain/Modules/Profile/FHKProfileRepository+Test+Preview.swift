//
//  FHKProfileRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 8/3/26.
//

//public protocol FHKProfileRepositoryProtocol: FHKInjectableProtocol {
//    func logout() async throws
//    func deleteKeychain(key: String) throws
//    func getEmailParent() throws -> String?
//    func getLanguageCurrent() async -> String
//    func setNewLanguage(lang: String)
//    func getFamilyName() async -> String?
//}

public struct FHKProfileRepository: Sendable {
    
    public var logout: @Sendable() async throws -> Void = { }
    public var deleteKeychain: @Sendable(String) throws -> Void = { _ in }
    public var getEmailParent: @Sendable() throws -> String? = { nil }
    public var getLanguageCurrent: @Sendable() async throws -> String = { "" }
    public var setNewLanguage: @MainActor @Sendable(String) -> Void = { _ in }
    public var getFamilyName: @Sendable() async -> String? = { nil }
    
    public init() { }
}

public extension FHKProfileRepository {
    
    static var test: Self {
        Self()
    }
    
    static func preview(_ lng: LanguageType) -> Self {
        var repository = Self()
        repository.getEmailParent = { "user@domian.com" }
        repository.getLanguageCurrent = { lng.code }
        repository.getFamilyName = { "Family Dummy" }
        
        return repository
    }
}
