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
    
    static func preview(_ count: Int) -> Self {
        var repository = Self()
        
        repository.clearCache = {}
        
        repository.getGoals = { _, _ in
            GoalEntity.previewItem(count)
        }
        
        repository.createGoalMember = { _ in }
        
        repository.fetchGoalMember = { memberId, isForceRefresh in
            GoalMemberEntity.previewItem(count)
        }
        
        repository.fetchGoalMemberFamily = { emailParent, isForceRefresh in
            GoalMemberEntity.previewItem(count)
        }
        
        repository.clearCache = {}
        
        return repository
    }
}

