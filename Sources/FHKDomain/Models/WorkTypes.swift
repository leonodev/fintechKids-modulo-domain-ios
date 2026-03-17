//
//  RewardTypes.swift
//  FHKDomain
//
//  Created by Fredy Leon on 17/3/26.
//

public enum WorkType: String, Equatable, Sendable {
    case time = "time"
    case coins = "coins"
    
    public var value: String {
        return self.rawValue
    }
}
