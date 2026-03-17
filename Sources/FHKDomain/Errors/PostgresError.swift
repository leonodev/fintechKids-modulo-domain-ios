//
//  PostgresError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 17/3/26.
//

public struct PostgresError: Error {
    public let code: String
    public let message: String
    public let hint: String?
    
    public var isInvalidDateFormat: Bool {
        return code == "22007"
    }
}
