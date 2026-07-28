//
//  FHKRegisterMemberRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKRegisterMembersRepository {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var members = Self()
        
        members.registerMembers = { _ in }
        
        members.getParentMail = {
            "parent@domain.com"
        }
        
        members.getFamilyName = {
            "Family Dummy"
        }
        
        return members
    }
}
