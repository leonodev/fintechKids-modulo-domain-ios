//
//  RewardRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/4/26.
//

public protocol FHKRewardRepositoryProtocol: FHKInjectableProtocol {
    func createReward(reward: RewardEntity) async throws
    func fetchRewards(emailParent: String, forceRefresh: Bool) async throws -> [RewardEntity]
    func clearCache() async
    func getApprovePin() -> String
}
