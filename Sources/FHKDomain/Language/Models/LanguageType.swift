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
    
    public var code: String {
        return self.rawValue
    }
    
    public var name: String {
        switch self {
        case .es:
            return "Español"
        case .en:
            return "English"
        case .it:
            return "Italiano"
        case .fr:
            return "Français"
        }
    }
    
    public static func == (lhs: LanguageType, rhs: LanguageType) -> Bool {
        lhs.code == rhs.code
    }
}
