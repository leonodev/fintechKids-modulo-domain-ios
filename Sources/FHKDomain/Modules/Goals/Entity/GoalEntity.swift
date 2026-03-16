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
    public let name: String
    public let emailParent: String
    public let value: Int
    public let measureType: String
    public let status: String
    
    public init(expirationDate: String,
                name: String,
                emailParent: String,
                value: Int,
                measureType: String,
                status: String
    ) {
        self.expirationDate = expirationDate
        self.name = name
        self.emailParent = emailParent
        self.value = value
        self.measureType = measureType
        self.status = status
    }
}
