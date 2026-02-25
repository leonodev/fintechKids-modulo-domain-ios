//
//  APIConfigError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public enum APIConfigError: Error {
    case fileNotFound(name: String)
    case deserializationFailed
    case keyNotFound(key: String)
    case invalidType
}

public enum ServiceType: String {
    case supabase = "supabase"
}

public protocol ServicesAPIProtocol: FHKInjectableProtocol {
    func getURL(environment: EnvironmentType, serviceKey: ServiceType) throws -> String
}
