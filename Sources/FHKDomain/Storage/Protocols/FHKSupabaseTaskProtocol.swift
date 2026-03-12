//
//  FHKSupabaseTaskProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 12/3/26.
//

public protocol FHKSupabaseTaskProtocol: FHKInjectableProtocol {
    func createTask(task: TaskEntity) async throws
    func getTasks() async throws -> [TaskEntity]
}
