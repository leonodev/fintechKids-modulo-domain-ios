//
//  BalanceRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 30/3/26.
//

import Foundation

public protocol FHKBalanceRepositoryProtocol: FHKInjectableProtocol {
    func fetchBalance(memberId: String) async throws -> BalanceEntity
    func updateBalance(memberId: UUID, infoBalance: BalanceEntity) async throws
}
