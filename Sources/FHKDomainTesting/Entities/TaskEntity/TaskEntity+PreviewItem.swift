//
//  TaskEntity+PreviewItem.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import Foundation
import FHKDomain

public extension TaskEntity {
    static var previewItem: Self {
        TaskEntity(createdAt: Date().toUTC,
                              name: "Taking care to ...",
                              description: "look after him for 2 hours",
                              timeGranted: "3 hours",
                              coinsGranted: 100,
                              emailParent: "parent@domain.com")
    }
}
