//
//  BalanceEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 30/3/26.
//

import Foundation

public struct BalanceEntity: DomainModelProtocol {
    public let id: UUID = UUID()
    public let memberId: UUID
    public let coinsObtained: Int
    public let timeObtained: String
    
    public init(memberId: UUID,
                coinsObtained: Int,
                timeObtained: String
    ) {
        self.memberId = memberId
        self.coinsObtained = coinsObtained
        self.timeObtained = timeObtained
    }
}
