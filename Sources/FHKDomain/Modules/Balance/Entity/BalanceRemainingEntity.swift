//
//  BalanceRemainingEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/5/26.
//

import Foundation

public struct BalanceRemainingEntity: Equatable {
    public let memberId: UUID
    public let collectReward: CollectRewardEntity
    public let goal: GoalEntity
    
    public init(
        memberId: UUID,
        collectReward: CollectRewardEntity,
        goal: GoalEntity
    ) {
        self.memberId = memberId
        self.collectReward = collectReward
        self.goal = goal
    }
}

