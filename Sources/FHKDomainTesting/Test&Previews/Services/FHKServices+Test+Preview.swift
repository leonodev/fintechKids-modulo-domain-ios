//
//  FHKServices+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKServices {
    static var test: Self {
        var mock = Self()
        
        mock.getURL = { _, _, _ in
            return "https://dev.fintechkids.com"
        }
        
        return mock
    }
}
