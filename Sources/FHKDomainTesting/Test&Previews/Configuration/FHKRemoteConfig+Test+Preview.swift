//
//  FHKRemoteConfig+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKRemoteConfig {
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var config = Self()
        
        config.enabledLanguages = { ["en", "es"] }
        
        config.menuHomeItems = { [
            MenuHomeItem.previewItem
        ]
        }
        
        config.fetchConfig = {}
        
        config.getCachedTimeExpiration = { 1 /* Minutes */  }
        
        return config
    }
}

