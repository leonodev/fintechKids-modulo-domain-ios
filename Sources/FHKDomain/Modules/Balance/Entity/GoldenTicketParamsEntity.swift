//
//  GoldenTicketParamsEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 18/4/26.
//

public struct GoldenTicketParamsEntity: Encodable, Equatable, Sendable {
    let recipientName: String
    let taskDescription: String
    let reward: String
    let emailTo: String
    
    public init(recipientName: String,
                taskDescription: String,
                reward: String,
                emailTo: String
    ) {
        self.recipientName = recipientName
        self.taskDescription = taskDescription
        self.reward = reward
        self.emailTo = emailTo
    }
}

public struct ResendResponse: Decodable {
    public let id: String?
}
