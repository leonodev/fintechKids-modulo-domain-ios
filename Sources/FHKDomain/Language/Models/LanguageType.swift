//
//  LanguageType.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import SwiftUI

public enum LanguageType: String, Sendable, Codable, Equatable {
    case en = "en"
    case es = "es"
    case it = "it"
    case fr = "fr"
    
    public func code() -> String {
        return self.rawValue
    }
    
    public static func == (lhs: LanguageType, rhs: LanguageType) -> Bool {
        lhs.code() == rhs.code()
    }
}
