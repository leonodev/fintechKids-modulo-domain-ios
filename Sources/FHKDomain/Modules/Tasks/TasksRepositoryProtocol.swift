//
//  TasksRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 12/3/26.
//

public protocol FHKTasksRepositoryProtocol: Sendable {
    func createTask(task: TaskEntity) async throws
    func getTasks(emailParent: String, forceRefresh: Bool) async throws -> [TaskEntity]
    func clearCache()
}
