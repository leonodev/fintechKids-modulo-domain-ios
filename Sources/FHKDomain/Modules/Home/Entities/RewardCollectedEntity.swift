//
//  RewardCollectedEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 21/4/26.
//

import Foundation

public struct RewardCollectedEntity: DomainModelProtocol {
    public let id: Int
    public let createdDate: String
    public let member: MemberEntity
    public let parentEmail: String
    public let nameReward: String
    public let claimedValue: String
    public let state: String
    
    public init(id: Int,
                createdDate: String,
                member: MemberEntity,
                parentEmail: String,
                nameReward: String,
                claimedValue: String,
                state: String
    ) {
        self.id = id
        self.createdDate = createdDate
        self.member = member
        self.parentEmail = parentEmail
        self.nameReward = nameReward
        self.claimedValue = claimedValue
        self.state = state
    }
}
