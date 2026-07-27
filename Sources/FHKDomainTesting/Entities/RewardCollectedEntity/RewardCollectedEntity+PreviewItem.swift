//
//  RewardCollectedEntity+PreviewItem.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import Foundation
import FHKDomain

public extension RewardCollectedEntity {
    static func previewItem(_ count: Int) -> [Self] {
        var previewItems = [Self]()
        
        for i in 1...count {
            let item = RewardCollectedEntity(id: 1,
                                             createdDate: Date().toUTC,
                                             member: MemberEntity.previewItem,
                                             parentEmail: "parent@domain.com",
                                             nameReward: "Go to Karting \(i)",
                                             claimedValue: "200 KidsCoins",
                                             state: "PENDING",
                                             nameTask: "pass the school term exams")
            previewItems.append(item)
        }
        
        return previewItems
    }
}
