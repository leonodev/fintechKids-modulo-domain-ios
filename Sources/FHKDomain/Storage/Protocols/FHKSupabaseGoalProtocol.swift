//
//  FHKSupabaseGoalProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 15/3/26.
//

public protocol FHKSupabaseGoalProtocol: FHKInjectableProtocol {
    func createTask(goal: GoalEntity) async throws
    func getTasks(emailParent: String) async throws -> [GoalEntity]
}
