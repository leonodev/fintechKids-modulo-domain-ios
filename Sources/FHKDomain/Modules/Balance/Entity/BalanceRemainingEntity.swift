//
//  BalanceRemainingEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/5/26.
//

import Foundation

public struct BalanceRemainingEntity {
    public let memberId: UUID
    public let collectReward: CollectRewardEntity
    public let coinsObtained: Int
    
    public init(
        memberId: UUID,
        collectReward: CollectRewardEntity,
        coinsObtained: Int
    ) {
        self.memberId = memberId
        self.collectReward = collectReward
        self.coinsObtained = coinsObtained
    }
}

