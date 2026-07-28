//
//  FHKTasksRepository+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension FHKTasksRepository {
    
    static var test: Self {
        Self()
    }
    
    static var preview: Self {
        var tasksRepository = Self()
        
        tasksRepository.createTask = { _ in }
        
        tasksRepository.getTasks = { emailParent, forceRefresh in
            [TaskEntity.previewItem]
        }
        
        return tasksRepository
    }
}

