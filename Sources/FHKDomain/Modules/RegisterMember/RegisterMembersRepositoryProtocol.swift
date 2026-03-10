//
//  RegisterMembersRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 3/3/26.
//

public protocol FHKRegisterMembersRepositoryProtocol: FHKInjectableProtocol {
    func registerMembers(members: [MemberEntity]) async throws
    func getParentMail() async -> String?
    func getFamilyName() async -> String?
}
