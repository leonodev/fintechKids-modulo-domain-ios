//
//  BalanceRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 30/3/26.
//

import Foundation

public protocol FHKBalanceRepositoryProtocol: FHKInjectableProtocol {
    func fetchBalance(memberId: UUID) async throws -> BalanceEntity
    func updateKidsCoinsBalance(memberId: UUID, infoBalance: BalanceKidsCoinsEntity) async throws
    func updateTimeBalance(memberId: UUID, infoBalance: BalanceTimeEntity) async throws
}
