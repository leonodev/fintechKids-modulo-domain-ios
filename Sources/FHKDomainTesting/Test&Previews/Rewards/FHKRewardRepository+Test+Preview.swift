//
//  FHKRewardRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKRewardRepository {
    
    static var test: Self {
        Self()
    }
    
    static func preview(reward: Int = 2, rewardCollected: Int = 2) -> Self {
        var mock = Self()
        
        mock.createReward = {_ in}
        
        mock.fetchRewards = {_, _ in
            RewardEntity.previewItem(reward)
        }
        
        mock.clearCache = {}
        
        return mock
    }
}
