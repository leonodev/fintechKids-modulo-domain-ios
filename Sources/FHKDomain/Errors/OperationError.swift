//
//  OperationError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 17/3/26.
//

public enum OperationError: Error {
    case invalidData
    case networkError(message: String)
    case creationFailed
    case decodingError
}
