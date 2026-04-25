//
//  HomeRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 3/3/26.
//

public protocol FHKHomeRepositoryProtocol: FHKInjectableProtocol {
    func fetchMembers(email: String, forceRefresh: Bool) async throws -> [MemberEntity]
    func fetchRewardCollected(parentEmail: String, forceRefresh: Bool) async throws -> [RewardCollectedEntity]
    func getParentMail() -> String?
}
