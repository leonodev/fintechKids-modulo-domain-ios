//
//  FHKLanguageRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKLanguageRepository {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var mock = Self()
        
        mock.fetchConfig = {
            ["es", "it", "en", "fr"]
        }
        
        mock.changeLanguageApp = { _ in }
        
        return mock
    }
}
