//
//  FHKSupabaseTask.swift
//  FHKDomain
//
//  Created by Fredy Leon on 12/3/26.
//

import Foundation

//public protocol FHKSupabaseTaskProtocol {
//    func createTask(task: TaskEntity) async throws
//    func getTasks(parentEmail: String) async throws -> [TaskEntity]
//}

public struct FHKSupabaseTask: Sendable {
    public var createTask:
    @Sendable(TaskEntity) async throws -> Void = { _ in }
    
    public var getTasks:
    @Sendable(String) async throws -> [TaskEntity] = {_ in []}
    
    public init() {}
}
