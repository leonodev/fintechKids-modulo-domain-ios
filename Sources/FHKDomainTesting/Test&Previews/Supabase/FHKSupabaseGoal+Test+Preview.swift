//
//  FHKSupabaseGoal+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKSupabaseGoal {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var goals = Self()
        
        goals.createGoal = { _ in }
        goals.getGoals = { emailParent in
            GoalEntity.previewItem(2)
        }
        
        return goals
    }
}
