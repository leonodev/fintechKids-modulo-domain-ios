//
//  FHKSplashRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKSplashRepository {
    static var test: Self {
        var repository = Self()
        repository.readLanguageCurrent = { "es" }
        return repository
    }
    
    static var preview: Self {
        var repository = Self()
        repository.readLanguageCurrent = { "en" }
        return repository
    }
}
