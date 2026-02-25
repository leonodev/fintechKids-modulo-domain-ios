//
//  SecurityError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public enum SecurityError: Error {
    case cryptoError(String)
    case invalidKeyData
}

