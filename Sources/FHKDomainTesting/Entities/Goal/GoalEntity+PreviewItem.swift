//
//  GoalEntity+PreviewItem.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import Foundation
import FHKDomain

public extension GoalEntity {
    static func previewItem(_ count: Int) -> [Self] {
        var previewItems = [GoalEntity]()
        
        for i in 1...5 {
            let item = GoalEntity(expirationDate: Date().toUTC,
                                  name: "PSP5 - \(i)",
                                  emailParent: "parent@domain.com",
                                  value: 35,
                                  measureType: "coins",
                                  status: .inCurse)
            
            previewItems.append(item)
        }
        return previewItems
    }
}
