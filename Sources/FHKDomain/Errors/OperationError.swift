//
//  OperationError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 17/3/26.
//

public enum OperationError: Error {
    case invalidDate
    case databaseError(String)
    case networkError(String)
    case decodingError
    case creationError
}
