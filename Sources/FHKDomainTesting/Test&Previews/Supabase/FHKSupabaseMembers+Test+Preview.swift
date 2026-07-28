//
//  FHKSupabaseMembers+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKSupabaseMembers {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var supabase = Self()
        
        supabase.fetchFamilyMembers = { email in
            [MemberEntity.previewItem]
        }
        
        return supabase
    }
}

