//
//  FHKProfileRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

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
