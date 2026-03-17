//
//  DurationTypes.swift
//  FHKDomain
//
//  Created by Fredy Leon on 17/3/26.
//

public enum DurationType: String, Equatable {
    case hours = "hours"
    case days = "days"
    case weeks = "weeks"
    case months = "months"
    
    public var value: String {
        return self.rawValue
    }
     
}
