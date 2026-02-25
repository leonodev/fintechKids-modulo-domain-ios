//
//  FHKLanguageManagerProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public protocol FHKLanguageManagerProtocol: FHKInjectableProtocol {
    var selectedLanguage: String { get set }
    var currentBundle: Bundle { get }
    func changeLanguage(to language: String)
    func languageTypeFromCode(_ string: String) -> LanguageType
}
