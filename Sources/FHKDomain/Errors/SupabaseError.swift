//
//  PostgresError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 17/3/26.
//


/// Codes API Doc: https://www.postgresql.org/docs/current/errcodes-appendix.html


public enum FHKSupabaseError: FHKError {
    // Errors Auth
    case emailAddressInvalid
    case invalidCredentials(context: String? = nil)
    case userNotFound
    case emailNotConfirmed
    case otpExpired
    case tooManyRequests
    case userAlreadyExists(context: String? = nil)
    case accessToken
    
    // Errors PostgREST
    case dateInvalid(context: String? = nil)          // Error 22007: Incorrect date format
    case nameAlreadyExists(context: String? = nil)    // Error 23505: A record with that name already exists.
    case missingRequiredField(context: String? = nil) // Error 23502: A required field is missing.
    case networkError         // Anywhere Clase 08: Connection failure or timeout
    case unknown(String)      // For any other unmapped errors
    

    // Only return the key localization
    public var msnLocalizedKey: String {
        switch self {
          
        case .emailAddressInvalid, .nameAlreadyExists:
            return "msn_register_user_error"
            
        case .invalidCredentials, .userNotFound, .userAlreadyExists:
            return "invalid_credentials_error"
            
        case .emailNotConfirmed:
            return "email_not_confirmed_error"
            
        case .otpExpired:
            return "msm_otp_expired_error"
            
        case .dateInvalid:
            return "msn_type_data_invalid_error"
            
        case .networkError:
            return "msn_connection_network_error"
            
        case .tooManyRequests:
            return "msn_too_many_requests_error"
            
        case .unknown, .accessToken, .missingRequiredField:
            return "msn_generic_error"
        }
    }
    
    public var logMessage: String {
        switch self {
            
        case .emailAddressInvalid:
            return "the email address is invalid"
            
        case .invalidCredentials(let context):
            return "Invalid credentials provided. Attempt: \(context ?? "none")"
            
        case .userNotFound:
            return "User not found in the system"
            
        case .emailNotConfirmed:
            return "The user needs to confirm their email address before logging in"
            
        case .otpExpired:
            return "The OTP is no longer valid or expired"
            
        case .tooManyRequests:
            return "Too many requests in a short period of time"
            
        case .userAlreadyExists(let context):
            return "The user already exist. Attempt: \(context ?? "none")"
            
        case .accessToken:
            return "Domain: Access token is invalid or expired"
            
        case .dateInvalid(let context):
            return "Data sent in invalid format. Context: \(context ?? "none")"
            
        case .nameAlreadyExists(let context):
            return "A record with that name already exists. Data: \(context ?? "none")"
            
        case .missingRequiredField(let field):
            return "Missing required field: \(field ?? "unknown")"
            
        case .networkError:
            return "Network error with supabase"
            
        case .unknown(let message):
            return "Unknown error: \(message)"
        }
    }
    
    public var isShouldTrack: Bool {
        return true
    }
    
    // Parser codes Auth
    public static func from(errorCode: String) -> FHKSupabaseError {
        switch errorCode {
            
        case "email_address_invalid":
            return .emailAddressInvalid
                
        case "invalid_credentials":
            return .invalidCredentials(context: nil)
            
        case "user_not_found":
            return .userNotFound
            
        case "email_not_confirmed":
            return .emailNotConfirmed
            
        case "otp_expired":
            return .otpExpired
            
        case "too_many_requests":
            return .tooManyRequests
          
        case "user_already_exists":
            return .userAlreadyExists(context: nil)
            
        default:
            return .unknown(errorCode)
        }
    }
}
