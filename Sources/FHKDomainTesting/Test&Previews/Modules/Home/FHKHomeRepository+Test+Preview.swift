//
//  FHKHomeRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import Foundation
import FHKDomain

public extension FHKHomeRepository {
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var homeRepo = Self()
        
        homeRepo.fetchMembers = { _, _ in
            [MemberEntity.previewItem]
        }
        
        homeRepo.fetchRewardCollected = { _, _ in
            RewardCollectedEntity.previewItem(2)
        }
        
        homeRepo.getParentMail = {
            "parent@domain.com"
        }
        
        return homeRepo
    }
}

