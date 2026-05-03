//
//  FHKSupabaseGoalProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 15/3/26.
//

import Foundation

public protocol FHKSupabaseGoalProtocol: FHKInjectableProtocol {
    func createGoal(goal: GoalEntity) async throws
    func getGoals(emailParent: String) async throws -> [GoalEntity]
    func createGoalMember(goal: GoalMemberEntity) async throws
    func fetchGoalMember(memberId: UUID) async throws -> [GoalMemberEntity]
}
