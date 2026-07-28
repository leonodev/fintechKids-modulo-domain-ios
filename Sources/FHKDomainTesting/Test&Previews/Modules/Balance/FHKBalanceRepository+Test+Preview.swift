//
//  FHKBalanceRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKBalanceRepository {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var balance = Self()
        
        balance.fetchBalance = { memberId in
            BalanceEntity.previewItem
        }
        
        balance.updateKidsCoinsBalance = { _, _ in }
        balance.updateTimeBalance = { _, _ in }
        balance.sendGoldenTicket = { _ in }
        
        return balance
    }
}
