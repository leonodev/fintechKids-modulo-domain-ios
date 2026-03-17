//
//  OperationStatus.swift
//  FHKDomain
//
//  Created by Fredy Leon on 17/3/26.
//

import Foundation

public enum OperationStatus: String, CaseIterable, Sendable {
    case inCurse = "inCurse"
    case completed = "completed"
    case defeated = "defeated"
    case abandoned = "abandoned"
    
    public var value: String {
        return self.rawValue
    }
}
