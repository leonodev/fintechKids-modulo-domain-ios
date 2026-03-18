//
//  PostgresError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 17/3/26.
//


/// Codes API Doc: https://www.postgresql.org/docs/current/errcodes-appendix.html


public enum FHKSupabaseError: FHKError {
    case dateInvalid          // Error 22007: Incorrect date format
    case nameAlreadyExists    // Error 23505: A record with that name already exists.
    case missingRequiredField // Error 23502: A required field is missing.
    case networkError         // Anywhere Clase 08: Connection failure or timeout
    case unknown(String)      // For any other unmapped errors
    

    // Only return the key localization
    public var messageUI: String {
        switch self {
        case .dateInvalid:
            return "spb_error_type_data_invalid"
        case .nameAlreadyExists:
            return "spb_error_register_duplicated"
        case .missingRequiredField:
            return "spb_error_data_required"
        case .networkError:
            return "spb_error_connection_network"
        case .unknown:
            return "spb_generic_error"
        }
    }
    
    public var logMessage: String {
        switch self {
        case .dateInvalid:
            return "Data sent in invalid format"
        case .nameAlreadyExists:
            return "Data sent in invalid format"
        case .missingRequiredField:
            return "A required piece of information has not been sent"
        case .networkError:
            return "Network error with supabase"
        case .unknown:
            return "unknown error"
        }
    }
    
    public var isShouldTrack: Bool {
        return true
    }
}
