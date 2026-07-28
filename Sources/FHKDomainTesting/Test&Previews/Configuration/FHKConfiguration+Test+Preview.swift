//
//  FHKConfiguration+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKConfiguration {
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var config = Self()
        
        config.parentMail = {
            "parent@domain.com"
        }
        
        config.familyName = {
            "Family Dummy"
        }
        
        config.approvePin = {
            "0000"
        }
        
        return config
    }
}
