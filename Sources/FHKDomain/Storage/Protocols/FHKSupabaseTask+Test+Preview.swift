//
//  FHKSupabaseTask+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 12/3/26.
//

import Foundation

//public protocol FHKSupabaseTaskProtocol: FHKInjectableProtocol {
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

public extension FHKSupabaseTask {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var supabaseTask = Self()
        
        supabaseTask.createTask = { _ in }
        
        supabaseTask.getTasks = { parentEmail in
            [
                TaskEntity(createdAt: Date().toUTC,
                           name: "Do homework",
                           description: "clean room",
                           timeGranted: "2 hour",
                           coinsGranted: 40,
                           emailParent: "parent@domain.com")
            ]
        }
        
        return supabaseTask
    }
}
