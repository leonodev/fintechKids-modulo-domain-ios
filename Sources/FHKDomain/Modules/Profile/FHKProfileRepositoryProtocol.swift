//
//  FHKProfileRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 8/3/26.
//

public protocol FHKProfileRepositoryProtocol: FHKInjectableProtocol {
    func logout() async throws
    func deleteKeychain(key: String) throws
    func getEmailParent() throws -> String?
    func getLanguageCurrent() async -> String
    func setNewLanguage(lang: String)
}
