//
//  TaskEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 12/3/26.
//

import Foundation

public struct TaskEntity: DomainModelProtocol {
    public let id: Int
    public let createdAt: String
    public let name: String
    public let timeGranted: Int
    public let coinsGranted: Int
    public let emailParent: String
    
    public init(id: Int,
                createdAt: String,
                name: String,
                timeGranted: Int,
                coinsGranted: Int,
                emailParent: String
    ) {
        self.id = id
        self.createdAt = createdAt
        self.name = name
        self.timeGranted = timeGranted
        self.coinsGranted = coinsGranted
        self.emailParent = emailParent
    }
}
