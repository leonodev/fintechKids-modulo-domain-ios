//
//  SupabaseErrorProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 19/3/26.
//

public protocol FHKSupabaseErrorProtocol {
    func mapPostgresError(_ code: String, message: String) -> FHKSupabaseError
}

/// Codes API Doc: https://www.postgresql.org/docs/current/errcodes-appendix.html
public extension FHKSupabaseErrorProtocol {
    
    func mapPostgresError(_ code: String, message: String) -> FHKSupabaseError {
        switch code {
        case "22007":
            return .dateInvalid(context: message)
            
        case "23505":
            return .nameAlreadyExists(context: message)
            
        case "23502":
            return .missingRequiredField(context: message)
            
        case "42P01":
            return .tableNameUnknown(context: message)
            
        default:
            // We group by class prefix
            if code.hasPrefix("08") {
                return .networkError
            }
            return .unknown("Code: \(code) - \(message)")
        }
    }
}
