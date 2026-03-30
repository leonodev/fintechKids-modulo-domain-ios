//
//  FHKSupabaseBalanceProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 30/3/26.
//

import Foundation

public protocol FHKSupabaseBalanceProtocol: FHKInjectableProtocol {
    func fetchBalance(memberId: UUID) async throws -> BalanceEntity
    func updateBalance(memberId: UUID, infoBalance: BalanceEntity) async throws
}
