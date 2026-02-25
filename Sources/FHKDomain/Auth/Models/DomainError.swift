//
//  DomainError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public enum FHKDomainError: FHKError {
    case invalidCredentials
    case userNotFound
    case emailNotConfirmed
    case otpExpired
    case tooManyRequests
    case authenticationNotImplemented
    case refreshSession
    case userAlreadyExist
    case accessToken
    case unknown(String)
    
    public var logMessage: String {
        switch self {
        case .invalidCredentials:
            return "Domain: Invalid credentials provided by the user"
            
        case .userNotFound:
            return "Domain: User not found in authentication service"
            
        case .emailNotConfirmed:
            return "Domain: User email is not confirmed"
            
        case .otpExpired:
            return "Domain: The OTP code has expired"
            
        case .tooManyRequests:
            return "Domain: Rate limit exceeded (Too many requests)"
            
        case .authenticationNotImplemented:
            return "Domain: Service authentication not implemented yet"
            
        case .refreshSession:
            return "Domain: Session needs to be refreshed (Token expired)"
            
        case .userAlreadyExist:
            return "Domain: Registration failed - User already exists"
            
        case .accessToken:
            return "Domain: Access token is invalid or expired"
            
        case .unknown(let message):
            return "Domain: Unknown error occurred - \(message)"
        }
    }
    
    public var titleUI: String {
        return ""
    }
    
    public var messageUI: String {
        return ""
    }
    
    // Only track domain errores
    public var isShouldTrack: Bool {
        switch self {
        case .emailNotConfirmed, .invalidCredentials, .otpExpired:
            return false
            
        default:
            return true
        }
    }

    public static func from(errorCode: String) -> FHKDomainError {
        switch errorCode {
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
            
        // Register cases
        case "user_already_exists":
            return .userAlreadyExist
            
        default:
            return .unknown(errorCode)
        }
    }
}
