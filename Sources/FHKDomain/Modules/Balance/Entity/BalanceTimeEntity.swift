//
//  BalanceEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 30/3/26.
//

import Foundation

public struct BalanceTimeEntity: DomainModelProtocol {
    public let id: UUID = UUID()
    public let memberId: UUID
    public let timeObtained: String
    
    public init(memberId: UUID,
                timeObtained: String
    ) {
        self.memberId = memberId
        self.timeObtained = timeObtained
    }
}
