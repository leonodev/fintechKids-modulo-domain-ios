//
//  GoalEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 15/3/26.
//

import Foundation

public struct GoalEntity: DomainModelProtocol {
    public let id: Int?
    public let expirationDate: String
    public let name: String
    public let emailParent: String
    public let value: Int
    public let measureType: String
    public let status: OperationStatus
    
    public init(id: Int? = nil,
                expirationDate: String,
                name: String,
                emailParent: String,
                value: Int,
                measureType: String,
                status: OperationStatus
    ) {
        self.id = id
        self.expirationDate = expirationDate
        self.name = name
        self.emailParent = emailParent
        self.value = value
        self.measureType = measureType
        self.status = status
    }
}

public extension GoalEntity {
    static func previewItem(_ count: Int) -> [Self] {
        var previewItems = [GoalEntity]()
        
        for i in 1...5 {
            let item = GoalEntity(expirationDate: Date().toUTC,
                                  name: "PSP5 - \(i)",
                                  emailParent: "parent@domain.com",
                                  value: 35,
                                  measureType: "coins",
                                  status: .inCurse)
            
            previewItems.append(item)
        }
        return previewItems
    }
}
