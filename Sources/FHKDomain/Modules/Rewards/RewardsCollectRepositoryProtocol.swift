//
//  RewardsCollectRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 30/3/26.
//

public protocol FHKRewardsCollectRepositoryProtocol: FHKInjectableProtocol {
    func fetchBalance(memberId: String) async throws -> BalanceEntity
    func updateBalance(memberId: String, infoBalance: BalanceEntity) async throws
}
