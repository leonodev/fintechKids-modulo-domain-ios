//
//  GoalMemberEntity+PreviewItem.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import Foundation
import FHKDomain

public extension GoalMemberEntity {
    static func previewItem(_ count: Int) -> [Self] {
        var previewItems = [GoalMemberEntity]()
        
        for i in 1...count {
            let item = GoalMemberEntity(goalId: i,
                                        memberId: UUID.init(),
                                        nameGoal: "PSP5 \(i)",
                                        rewardsSystemType: "coins",
                                        rewardsSystemValue: 45,
                                        parentEmail: "parent@domain.com")
            
            previewItems.append(item)
        }
        return previewItems
    }
}
