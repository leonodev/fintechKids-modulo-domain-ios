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
    public let parentEmail: String
    
    public init(goalId: Int,
                memberId: UUID,
                accumulatedValue: Int = 0,
                taskWinnedValue: Int = 0,
                rewardsSystemType: String,
                rewardsSystemValue: Int,
                parentEmail: String
    ) {
        self.goalId = goalId
        self.memberId = memberId
        self.accumulatedValue = accumulatedValue
        self.taskWinnedValue = taskWinnedValue
        self.rewardsSystemType = rewardsSystemType
        self.rewardsSystemValue = rewardsSystemValue
        self.parentEmail = parentEmail
    }
}
