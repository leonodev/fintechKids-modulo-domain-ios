//
//  PostgresError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 17/3/26.
//

public struct FHKPostgresError: Error {
    public let code: String
    public let message: String
    public let hint: String?
    
    public init(code: String, message: String, hint: String?) {
        self.code = code
        self.message = message
        self.hint = hint
    }
}
