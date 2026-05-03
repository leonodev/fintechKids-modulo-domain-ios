//
//  GoalRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 15/3/26.
//

import Foundation

public protocol FHKGoalRepositoryProtocol: FHKInjectableProtocol {
    func createGoal(goal: GoalEntity) async throws
    func getGoals(emailParent: String, forceRefresh: Bool) async throws -> [GoalEntity]
    func createGoalMember(goal: GoalMemberEntity) async throws
    func fetchGoalMember(memberId: UUID, forceRefresh: Bool) async throws -> [GoalMemberEntity]
    func clearCache() async
}
