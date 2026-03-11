//
//  MemberEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 5/3/26.
//

import Foundation
import SwiftUI

public protocol MappeableToDomain {
    associatedtype ModelDomain
    func toDomain() throws -> ModelDomain
}

extension Array: MappeableToDomain where Element: MappeableToDomain {
    public typealias ModelDomain = [Element.ModelDomain]
    
    public func toDomain() throws -> ModelDomain {
        try map { try $0.toDomain()}
    }
}

public protocol MappeableToBusines {
    associatedtype ModelBusines
    func toDto() throws -> ModelBusines
}

extension Array: MappeableToBusines where Element: MappeableToBusines {
    public typealias ModelBusines = [Element.ModelBusines]
    
    public func toDto() throws -> ModelBusines {
        try map { try $0.toDto()}
    }
}

public protocol BusinessModelProtocol: Codable, Sendable {
   
}

public protocol DomainModelProtocol: Identifiable, Hashable, Equatable, Sendable {
    
}

public struct MemberEntity: DomainModelProtocol {
    public let id: UUID
    public let emailParent: String
    public let memberName: String
    public let familyName: String
    public let avatarName: String
    public var iconName: String = "trash"
    
    
    public init(id: UUID = UUID(),
                emailParent: String,
                memberName: String,
                familyName: String,
                avatarName: String = "boy_9",
                
    ) {
        self.id = id
        self.emailParent = emailParent
        self.memberName = memberName
        self.familyName = familyName
        self.avatarName = avatarName
    }
}
