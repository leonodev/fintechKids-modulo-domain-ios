//
//  TaskEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 12/3/26.
//

import Foundation

public struct TaskEntity: DomainModelProtocol {
    public let id: UUID = UUID()
    public let createdAt: String
    public let name: String
    public let description: String
    public let timeGranted: Int
    public let coinsGranted: Int
    public let emailParent: String
    
    public init(createdAt: String,
                name: String,
                description: String,
                timeGranted: Int,
                coinsGranted: Int,
                emailParent: String
    ) {
        self.createdAt = createdAt
        self.name = name
        self.description = description
        self.timeGranted = timeGranted
        self.coinsGranted = coinsGranted
        self.emailParent = emailParent
    }
}
