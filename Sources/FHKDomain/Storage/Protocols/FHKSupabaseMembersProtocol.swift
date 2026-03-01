//
//  SupabaseMembersProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public protocol FHKSupabaseMembersProtocol: AnyObject, Sendable {
    func addMembers(members: [FamilyMember]) async throws
    func fetchFamilyMembers(parentEmail: String) async throws -> [FamilyMember]
    func deleteMember(identification: UUID) async throws
}
