//
//  FHKLanguage+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 28/7/26.
//

import Foundation
import FHKDomain

public extension FHKLanguage {
    static var test: Self {
        Self()
    }
    
    static func preview(_ lng: LanguageType) -> Self {
        var mock = Self()
        mock.selectedLanguage = { lng.code }
        mock.languageTypeFromCode = { _ in lng }
        mock.currentBundle = { .forLanguage(lng.code) }
        
        return mock
    }
}

private extension Bundle {
    static func forLanguage(_ code: String) -> Bundle {
        guard let path = Bundle.main.path(forResource: code, ofType: "lproj"),
              let bundle = Bundle(path: path) else {
            return .main
        }
        return bundle
    }
}
