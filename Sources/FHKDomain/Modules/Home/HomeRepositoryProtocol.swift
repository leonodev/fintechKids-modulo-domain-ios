//
//  HomeRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 3/3/26.
//

public protocol FHKHomeRepositoryProtocol: FHKInjectableProtocol {
    func fetchMembers(email: String) async throws -> [MemberEntity]
    func fetchRewardCollected(parentEmail: String) async throws -> [RewardCollectedEntity]
    func getParentMail() -> String?
}
