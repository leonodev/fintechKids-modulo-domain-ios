//
//  FHKSupabaseGoal.swift
//  FHKDomain
//
//  Created by Fredy Leon on 15/3/26.
//

import Foundation

//public protocol FHKSupabaseGoalProtocol {
//    func createGoal(goal: GoalEntity) async throws
//    func getGoals(emailParent: String) async throws -> [GoalEntity]
//    func createGoalMember(goal: GoalMemberEntity) async throws
//    func fetchGoalMember(memberId: UUID) async throws -> [GoalMemberEntity]
//    func fetchGoalMemberFamily(emailParent: String) async throws -> [GoalMemberEntity]
//}

public struct FHKSupabaseGoal: Sendable {
    public var createGoal:
    @Sendable(GoalEntity) async throws -> Void = { _ in }
    
    public var getGoals:
    @Sendable(String) async throws -> [GoalEntity] = {_ in []}
    
    public var createGoalMember:
    @Sendable(GoalMemberEntity) async throws -> Void = {_ in }
    
    public var fetchGoalMember:
    @Sendable(UUID) async throws -> [GoalMemberEntity] = {_ in []}
    
    public var fetchGoalMemberFamily:
    @Sendable(String) async throws -> [GoalMemberEntity] = {_ in []}
    
    public init() {}
}
