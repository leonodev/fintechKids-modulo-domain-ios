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
    public let timeGranted: String
    public let coinsGranted: Int
    public let emailParent: String
    
    public init(createdAt: String,
                name: String,
                description: String,
                timeGranted: String,
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

public extension TaskEntity {
    static func previewItem(_ count: Int) -> [Self] {
        var previewItems = [TaskEntity]()
        
        for i in 1...5 {
            let item = TaskEntity(createdAt: Date().toUTC,
                                  name: "do the class homework \(i)",
                                  description: "do the class homework before Sunday",
                                  timeGranted: "2 Hours",
                                  coinsGranted: 40,
                                  emailParent: "user@domain.com")
            
            previewItems.append(item)
        }
        return previewItems
    }
}
