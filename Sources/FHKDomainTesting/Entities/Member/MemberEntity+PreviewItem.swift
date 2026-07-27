//
//  MemberEntity+PreviewItem.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension MemberEntity {
    static var previewItem: Self {
        MemberEntity(emailParent: "parent@domain.com",
                     memberName: "New Member",
                     familyName: "Family Dummy")
    }
}

