//
//  GoalRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 15/3/26.
//

public protocol FHKGoalRepositoryProtocol: FHKInjectableProtocol {
    func createGoal(goal: GoalEntity) async throws
    func getGoals(emailParent: String, forceRefresh: Bool) async throws -> [GoalEntity]
    func createGoalMember(goal: GoalMemberEntity) async throws
    func fetchGoalMember(member: MemberEntity, forceRefresh: Bool) async throws -> [GoalMemberEntity]
    func clearCache() async
}
