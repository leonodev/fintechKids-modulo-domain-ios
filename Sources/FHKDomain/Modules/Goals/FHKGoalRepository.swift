//
//  FHKGoalRepository.swift
//  FHKDomain
//
//  Created by Fredy Leon on 15/3/26.
//

import Foundation

//public protocol FHKGoalRepositoryProtocol {
//    func createGoal(goal: GoalEntity) async throws
//    func getGoals(emailParent: String, forceRefresh: Bool) async throws -> [GoalEntity]
//    func createGoalMember(goal: GoalMemberEntity) async throws
//    func fetchGoalMember(memberId: UUID, forceRefresh: Bool) async throws -> [GoalMemberEntity]
//    func fetchGoalMemberFamily(emailParent: String, forceRefresh: Bool) async throws -> [GoalMemberEntity]
//    func clearCache() async
//}

public struct FHKGoalRepository: Sendable {
    
    public var createGoal: @Sendable
    (GoalEntity) async throws -> Void = { _ in }
    
    public var getGoals: @Sendable
    (String, Bool) async throws -> [GoalEntity] = { _, _ in [] }
    
    public var createGoalMember: @Sendable
    (GoalMemberEntity) async throws -> Void = { _ in }
    
    public var fetchGoalMember: @Sendable
    (UUID, Bool) async throws -> [GoalMemberEntity] = { _, _ in [] }
    
    public var fetchGoalMemberFamily: @Sendable
    (String, Bool) async throws -> [GoalMemberEntity] = { _, _ in [] }
    
    public var clearCache: @Sendable
    () async -> Void = { }
    
    public init() {}
}
