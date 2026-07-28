//
//  FHKSupabaseRewardsProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/4/26.
//

//public protocol FHKSupabaseRewardsProtocol {
//    func createReward(reward: RewardEntity) async throws
//    func fetchRewards(emailParent: String) async throws -> [RewardEntity]
//    func fetchRewardCollected(parentEmail: String) async throws -> [RewardCollectedEntity]
//}


public struct FHKSupabaseRewards: Sendable {
    public var createReward:
    @Sendable(RewardEntity) async throws -> Void = { _ in }
    
    public var fetchRewards:
    @Sendable(String) async throws -> [RewardEntity] = { _ in [] }
    
    public var fetchRewardCollected:
    @Sendable(String) async throws -> [RewardCollectedEntity] = { _ in [] }
    
    public init() {}
}
