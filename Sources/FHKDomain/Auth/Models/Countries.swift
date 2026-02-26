//
//  Countries.swift
//  FHKDomain
//
//  Created by Fredy Leon on 26/2/26.
//

public enum Countries: Sendable {
    case spanish
    case french
    case england
    case italy
    
    public var domain: String {
        switch self {
        case .spanish:
            return "ES"
            
        case .french:
            return "FR"
            
        case .england:
            return "EN"
            
        case .italy:
            return "IT"
        }
    }
}
