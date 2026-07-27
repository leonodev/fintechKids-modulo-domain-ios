//
//  MemberEntity+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain
import Foundation

public extension MemberEntity {
    static func previewItem(_ count: Int) -> [Self] {
        var previewItems = [MemberEntity]()
        
        for i in 1...5 {
            let item = MemberEntity(emailParent: "parent@domain.com",
                                    memberName: "New Member",
                                    familyName: "Family Dummy")
            
            previewItems.append(item)
        }
        
        return previewItems
    }
}

