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
    case invalidCredentials
    case userNotFound
    case emailNotConfirmed
    case otpExpired
    case tooManyRequests
    case userAlreadyExist
    case accessToken
    
    // Errors PostgREST
    case dateInvalid          // Error 22007: Incorrect date format
    case nameAlreadyExists    // Error 23505: A record with that name already exists.
    case missingRequiredField // Error 23502: A required field is missing.
    case networkError         // Anywhere Clase 08: Connection failure or timeout
    case unknown(String)      // For any other unmapped errors
    

    // Only return the key localization
    public var msnLocalizedKey: String {
        switch self {
          
        case .emailAddressInvalid:
            return "msn_register_user_error"
            
        case .invalidCredentials, .userNotFound, .userAlreadyExist:
            return "invalid_credentials_error"
            
        case .emailNotConfirmed:
            return "email_not_confirmed_error"
            
        case .otpExpired:
            return "msm_otp_expired_error"
            
        case .tooManyRequests, .dateInvalid:
            return "spb_error_type_data_invalid"
            
        case .nameAlreadyExists:
            return "spb_error_register_duplicated"
            
        case .missingRequiredField:
            return "spb_error_data_required"
            
        case .networkError:
            return "spb_error_connection_network"
            
        case .unknown, .accessToken:
            return "spb_generic_error"
        }
    }
    
    public var logMessage: String {
        switch self {
            
        case .emailAddressInvalid:
            return "the email address is invalid"
            
        case .invalidCredentials:
            return "Invalid credentials provided by the user"
            
        case .userNotFound:
            return "User not found in the system"
            
        case .emailNotConfirmed:
            return "The user needs to confirm their email address before logging in"
            
        case .otpExpired:
            return "The OTP is no longer valid or expired"
            
        case .tooManyRequests:
            return "Too many requests in a short period of time"
            
        case .userAlreadyExist:
            return "The user already exist"
            
        case .accessToken:
            return "Domain: Access token is invalid or expired"
            
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
    
    // Parser codes Auth
    public static func from(errorCode: String) -> FHKSupabaseError {
        switch errorCode {
            
        case "email_address_invalid":
            return .emailAddressInvalid
                
        case "invalid_credentials":
            return .invalidCredentials
            
        case "user_not_found":
            return .userNotFound
            
        case "email_not_confirmed":
            return .emailNotConfirmed
            
        case "otp_expired":
            return .otpExpired
            
        case "too_many_requests":
            return .tooManyRequests
          
        case "user_already_exists":
            return .userAlreadyExist
            
        default:
            return .unknown(errorCode)
        }
    }
}
