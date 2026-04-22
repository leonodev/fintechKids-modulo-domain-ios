//
//  GoldenTicketParamsEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 18/4/26.
//

import Foundation

public struct GoldenTicketParamsEntity: Encodable, Equatable, Sendable {
    public let recipientName: String
    public let taskDescription: String
    public let reward: String
    public let emailTo: String
    public let memberId: UUID
    public let claimedValue: String
    
    public init(recipientName: String,
                taskDescription: String,
                reward: String,
                emailTo: String,
                memberId: UUID,
                claimedValue: String
    ) {
        self.recipientName = recipientName
        self.taskDescription = taskDescription
        self.reward = reward
        self.emailTo = emailTo
        self.memberId = memberId
        self.claimedValue = claimedValue
    }
}

public struct ResendResponse: Decodable {
    public let id: String?
}
