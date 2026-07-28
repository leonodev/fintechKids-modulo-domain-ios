//
//  FHKRewardRepository.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/4/26.
//

//public protocol FHKRewardRepositoryProtocol {
//    func createReward(reward: RewardEntity) async throws
//    func fetchRewards(emailParent: String, forceRefresh: Bool) async throws -> [RewardEntity]
//    func clearCache() async
//}

public struct FHKRewardRepository: Sendable {
    public var createReward:
    @Sendable(RewardEntity) async throws -> Void = { _ in }
    
    
    public var fetchRewards:
    @Sendable(String, Bool) async throws -> [RewardEntity] = { _, _ in [] }
    
    public var clearCache: @Sendable() async -> Void = { }
    
    public init() {}
}
