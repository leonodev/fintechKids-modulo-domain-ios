//
//  FHKSupabaseRewards+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKSupabaseRewards {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var mock = Self()
        
        mock.createReward = { _ in }
        
        mock.fetchRewards = { _ in
            RewardEntity.previewItem(3)
        }
        
        mock.fetchRewardCollected = {  _ in
            RewardCollectedEntity.previewItem(2)
        }
        
        return mock
    }
}
