//
//  FamilyMember.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public struct FamilyMember: Codable, Identifiable, Hashable, Equatable {
    public let id = UUID() // Identidad para ForEach de SwiftUI
    public var dbId: Int? // Identidad para Supabase
    
    // Propiedades que unicamente seran persisitdas
    public let email_parent: String
    public let member_name: String
    public let avatar_name: String
    // Propiedades de conveniencia para la UI (No se guardan en la DB)
    public var iconName: String = "trash"
    
    public init(id: Int? = nil,
                email: String,
                memberName: String,
                avatarImage: String = "boy_9"
    ) {
        self.dbId = id
        self.email_parent = email
        self.member_name = memberName
        self.avatar_name = avatarImage
    }
    
    // ignoreamos iconName al guardar en DB
    enum CodingKeys: String, CodingKey {
        case dbId = "id"
        case email_parent
        case member_name
        case avatar_name
    }
}
