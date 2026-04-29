//
//  GoalMemberEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 29/4/26.
//

import Foundation

public struct GoalMemberEntity: DomainModelProtocol {
    public let id: UUID = UUID()
    public let goalId: Int
    public let memberId: UUID
    public let accumulatedValue: Int
    public let taskWinnedValue: Int
    public let rewardsSystemType: String
    public let rewardsSystemValue: Int
    
    public init(goalId: Int,
                memberId: UUID,
                accumulatedValue: Int,
                taskWinnedValue: Int = 0,
                rewardsSystemType: String,
                rewardsSystemValue: Int,
    ) {
        self.goalId = goalId
        self.memberId = memberId
        self.accumulatedValue = accumulatedValue
        self.taskWinnedValue = taskWinnedValue
        self.rewardsSystemType = rewardsSystemType
        self.rewardsSystemValue = rewardsSystemValue
    }
}
