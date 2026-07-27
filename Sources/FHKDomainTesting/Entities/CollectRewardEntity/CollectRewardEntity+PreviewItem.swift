//
//  CollectRewardEntity+PreviewItem.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import Foundation
import FHKDomain

public extension CollectRewardEntity {
    static var previewItem: Self {
        CollectRewardEntity(task: TaskEntity.previewItem,
                            receiveRewardType: .assignToGoal,
                            rewardType: .coins)
    }
}
