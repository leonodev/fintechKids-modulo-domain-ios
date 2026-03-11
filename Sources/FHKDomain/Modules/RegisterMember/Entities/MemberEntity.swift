//
//  MemberEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 5/3/26.
//

import Foundation
import SwiftUI

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
