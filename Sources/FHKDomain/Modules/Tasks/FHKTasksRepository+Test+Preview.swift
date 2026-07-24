//
//  FHKTasksRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 12/3/26.
//

import Foundation
import FHKUtils

//public protocol FHKTasksRepositoryProtocol: FHKInjectableProtocol {
//    func createTask(task: TaskEntity) async throws
//    func getTasks(emailParent: String, forceRefresh: Bool) async throws -> [TaskEntity]
//    func clearCache() async
//}

public struct FHKTasksRepository: Sendable {
    public var createTask:
    @Sendable(TaskEntity) async throws -> Void = { _ in }
    
    public var getTasks:
    @Sendable(String, Bool) async throws -> [TaskEntity] = { _, _ in  []}
    
    public var clearCache:
    @Sendable() async -> Void = {}
    
    public init() {}
}

public extension FHKTasksRepository {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var tasksRepository = Self()
        
        tasksRepository.createTask = { _ in }
        
        tasksRepository.getTasks = { emailParent, forceRefresh in
            TaskEntity.previewItem(2)
        }
        
        return tasksRepository
    }
}
