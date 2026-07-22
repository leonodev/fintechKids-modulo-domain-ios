//
//  LanguageManagerProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

/*
@MainActor
public protocol FHKLanguageManagerProtocol: FHKInjectableProtocol {
    var selectedLanguage: String { get set }
    var currentBundle: Bundle { get }
    func changeLanguage(to language: String)
    func languageTypeFromCode(_ string: String) -> LanguageType
}*/

@MainActor
public struct FHKLanguage: Sendable {
    public var selectedLanguage: @MainActor @Sendable () -> String = { LanguageType.es.code }
    public var setSelectedLanguage: @MainActor @Sendable (String) -> Void = { _ in }
    public var currentBundle: @MainActor @Sendable () -> Bundle = { .main }
    
    public var changeLanguage: @MainActor @Sendable(String) -> Void = {  _ in }
    public var languageTypeFromCode: @MainActor @Sendable (String) -> LanguageType = { _ in .es }
    
    public init() {}
}


public extension FHKLanguage {
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var mock = FHKLanguage()
        mock.selectedLanguage = { "es" }
        mock.languageTypeFromCode = { _ in .es }
        return mock
    }
    
    static var english: Self {
        var mock = FHKLanguage()
        mock.selectedLanguage = { "en" }
        mock.languageTypeFromCode = { _ in .en }
        return mock
    }
    
    static var italian: Self {
        var mock = FHKLanguage()
        mock.selectedLanguage = { "it" }
        mock.languageTypeFromCode = { _ in .it }
        return mock
    }
    
    static var french: Self {
        var mock = FHKLanguage()
        mock.selectedLanguage = { "fr" }
        mock.languageTypeFromCode = { _ in .fr }
        return mock
    }
}


