//
//  SupabaseMembersProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public protocol FHKSupabaseMembersProtocol: AnyObject, Sendable {
    func addMembers(members: [MemberEntity]) async throws
    func fetchFamilyMembers(parentEmail: String) async throws -> [MemberEntity]
    func deleteMember(identification: UUID) async throws
}
