//
//  FHKHomeRepository.swift
//  FHKDomain
//
//  Created by Fredy Leon on 3/3/26.
//

import Foundation

//public protocol FHKHomeRepositoryProtocol {
//    func fetchMembers(email: String, forceRefresh: Bool) async throws -> [MemberEntity]
//    func fetchRewardCollected(parentEmail: String, forceRefresh: Bool) async throws -> [RewardCollectedEntity]
//    func getParentMail() async -> String?
//}

public struct FHKHomeRepository: Sendable {
    
    public var fetchMembers:
    @Sendable(String, Bool) async throws -> [MemberEntity] = { _, _ in [] }
    
    public var fetchRewardCollected:
    @Sendable(String, Bool) async throws -> [RewardCollectedEntity] = { _, _ in [] }
    
    public var getParentMail:
    @Sendable() async -> String? = { nil }
    
    public init() {}
}
