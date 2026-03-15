//
//  GoalEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 15/3/26.
//

import Foundation

public struct GoalEntity: DomainModelProtocol {
    public let id: UUID = UUID()
    public let expirationDate: String
    public let duration: String
    public let emailParent: String
    public let coinsReward: Int
    public let timeReward: String
    public let status: String
    
    public init(expirationDate: String,
                duration: String,
                emailParent: String,
                coinsReward: Int,
                timeReward: String,
                status: String
    ) {
        self.expirationDate = expirationDate
        self.duration = duration
        self.emailParent = emailParent
        self.coinsReward = coinsReward
        self.timeReward = timeReward
        self.status = status
    }
}
