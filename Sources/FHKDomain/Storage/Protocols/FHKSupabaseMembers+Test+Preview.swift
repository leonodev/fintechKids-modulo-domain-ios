//
//  FHKSupabaseMembers+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

//public protocol FHKSupabaseMembersProtocol: AnyObject, Sendable {
//    func addMembers(members: [MemberEntity]) async throws
//    func fetchFamilyMembers(parentEmail: String) async throws -> [MemberEntity]
//    func deleteMember(identification: UUID) async throws
//}

public struct FHKSupabaseMembers: Sendable {
    
    public var addMembers:
    @Sendable([MemberEntity]) async throws -> Void = { _ in }
    
    public var fetchFamilyMembers:
    @Sendable(String) async throws -> [MemberEntity] = { _ in []}
    
    public var deleteMember:
    @Sendable(UUID) async throws -> Void = { _ in }
    
    public init() {}
}

public extension FHKSupabaseMembers {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var supabase = Self()
        
        supabase.fetchFamilyMembers = { email in
            return [MemberEntity(emailParent: "parent@domain.com",
                                 memberName: "new Member",
                                 familyName: "Family Dummy")]
        }
        
        return supabase
    }
}
