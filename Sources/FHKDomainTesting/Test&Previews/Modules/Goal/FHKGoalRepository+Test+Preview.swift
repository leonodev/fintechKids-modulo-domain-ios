//
//  FHKGoalRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKGoalRepository {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var repository = Self()
        
        repository.clearCache = {}
        
        repository.getGoals = { _, _ in
            GoalEntity.previewItem(2)
        }
        
        repository.createGoalMember = { _ in }
        
        repository.fetchGoalMember = { memberId, isForceRefresh in
            GoalMemberEntity.previewItem(3)
        }
        
        repository.fetchGoalMemberFamily = { emailParent, isForceRefresh in
            GoalMemberEntity.previewItem(1)
        }
        
        repository.clearCache = {}
        
        return repository
    }
}

