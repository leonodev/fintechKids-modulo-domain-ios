//
//  FHKRegisterMembersRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 3/3/26.
//

//public protocol FHKRegisterMembersRepositoryProtocol: FHKInjectableProtocol {
//    func registerMembers(members: [MemberEntity]) async throws
//    func getParentMail() async -> String?
//    func getFamilyName() async -> String?
//}

public struct FHKRegisterMembersRepository: Sendable {
    public var registerMembers: @Sendable([MemberEntity]) async throws -> Void = { _ in }
    public var getParentMail: @Sendable() async -> String? = { nil }
    public var getFamilyName: @Sendable() async -> String? = { nil }
    
    public init() { }
}

public extension FHKRegisterMembersRepository {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var members = Self()
        
        members.registerMembers = { _ in }
        
        members.getParentMail = {
            "parent@domain.com"
        }
        
        members.getFamilyName = {
            "Family Dummy"
        }
        
        return members
    }
}
