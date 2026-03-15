//
//  FHKSupabaseGoalProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 15/3/26.
//

public protocol FHKSupabaseGoalProtocol: FHKInjectableProtocol {
    func createGoal(goal: GoalEntity) async throws
    func getGoals(emailParent: String) async throws -> [GoalEntity]
}
