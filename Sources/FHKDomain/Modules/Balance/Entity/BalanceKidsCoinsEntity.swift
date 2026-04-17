//
//  BalanceKidsCoinsEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 17/4/26.
//

import Foundation

public struct BalanceKidsCoinsEntity: DomainModelProtocol {
    public let id: UUID = UUID()
    public let memberId: UUID
    public let coinsObtained: Int
    
    public init(memberId: UUID,
                coinsObtained: Int
    ) {
        self.memberId = memberId
        self.coinsObtained = coinsObtained
    }
}
