//
//  RewardEntity+PreviewItem.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain
import Foundation

public extension RewardEntity {
    static func previewItem(_ count: Int) -> [Self] {
        var previewItems = [Self]()
        
        for i in 1...count {
            let item = RewardEntity(createdAt: Date().toUTC,
                                    name: "Go to Karting \(i)",
                                    timeRequiered: "6 hours",
                                    coinsRequiered: 300,
                                    emailParent: "parent@domain.com")
            
            previewItems.append(item)
        }
        
        return previewItems
    }
}
