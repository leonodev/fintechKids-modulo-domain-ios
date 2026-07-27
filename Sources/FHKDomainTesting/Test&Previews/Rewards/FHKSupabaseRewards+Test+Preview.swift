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
    
    static func preview(reward: Int = 2, rewardCollected: Int = 2) -> Self {
        var mock = Self()
        
        mock.createReward = { _ in }
        
        mock.fetchRewards = { _ in
            RewardEntity.previewItem(reward)
        }
        
        mock.fetchRewardCollected = {  _ in
            RewardCollectedEntity.previewItem(rewardCollected)
        }
        
        return mock
    }
}
