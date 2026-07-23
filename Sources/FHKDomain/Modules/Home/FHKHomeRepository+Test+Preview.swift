//
//  FHKHomeRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 3/3/26.
//

import Foundation

//public protocol FHKHomeRepositoryProtocol: FHKInjectableProtocol {
//    func fetchMembers(email: String, forceRefresh: Bool) async throws -> [MemberEntity]
//    func fetchRewardCollected(parentEmail: String, forceRefresh: Bool) async throws -> [RewardCollectedEntity]
//    func getParentMail() async -> String?
//}

public struct FHKHomeRepository: Sendable {
    
    public var fetchMembers:
    @Sendable(String, Bool) async throws -> [MemberEntity] = { _, _ in [] }
    
    public var fetchRewardCollected:
    @Sendable(String, Bool) async throws -> [RewardCollectedEntity] = { _, _ in [] }
    
    public var getParentMail:
    @Sendable() async -> String? = { nil }
    
    public init() {}
}

public extension FHKHomeRepository {
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var homeRepo = Self()
        
        let memberMock = MemberEntity(emailParent: "parent@domain.com",
                                      memberName: "Parent Family",
                                      familyName: "Family Dummy")
        
        let rewardCollectedMock = RewardCollectedEntity(id: 0,
                                                        createdDate: Date().toUTC,
                                                        member: memberMock,
                                                        parentEmail: "parent@domain.com",
                                                        nameReward: "Go to Karting",
                                                        claimedValue: "40 KidsCoins",
                                                        state: "Pending",
                                                        nameTask: "Pass exams")
        
        homeRepo.fetchMembers = { _, _ in
            [memberMock]
        }
        
        homeRepo.fetchRewardCollected = { _, _ in
            [rewardCollectedMock]
        }
        
        homeRepo.getParentMail = {
            "parent@domain.com"
        }
        
        return homeRepo
    }
}
