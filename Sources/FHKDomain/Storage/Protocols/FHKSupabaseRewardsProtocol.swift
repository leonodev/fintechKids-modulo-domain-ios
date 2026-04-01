//
//  FHKSupabaseRewardsProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/4/26.
//

public protocol FHKSupabaseRewardsProtocol: FHKInjectableProtocol {
    func createReward(goal: RewardEntity) async throws
    func fetchRewards(emailParent: String) async throws -> [RewardEntity]
}
