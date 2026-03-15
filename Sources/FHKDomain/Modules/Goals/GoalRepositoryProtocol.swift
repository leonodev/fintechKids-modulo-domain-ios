//
//  GoalRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 15/3/26.
//

public protocol FHKGoalRepositoryProtocol: FHKInjectableProtocol {
    func createGoal(goal: GoalEntity) async throws
    func getGoal(emailParent: String, forceRefresh: Bool) async throws -> [TaskEntity]
    func clearCache() async
}
