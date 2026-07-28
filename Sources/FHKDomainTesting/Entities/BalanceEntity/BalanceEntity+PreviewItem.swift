//
//  BalanceEntity+PreviewItem.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import Foundation
import FHKDomain

public extension BalanceEntity {
    
    static var previewItem: Self {
        BalanceEntity(memberId: UUID(),
                      coinsObtained: 100,
                      timeObtained: "10 hours")
    }
}
