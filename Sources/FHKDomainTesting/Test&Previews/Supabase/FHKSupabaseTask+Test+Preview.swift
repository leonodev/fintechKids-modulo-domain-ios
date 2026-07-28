//
//  FHKSupabaseTask+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKSupabaseTask {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var supabaseTask = Self()
        
        supabaseTask.createTask = { _ in }
        
        supabaseTask.getTasks = { parentEmail in
            [TaskEntity.previewItem]
        }
        
        return supabaseTask
    }
}

