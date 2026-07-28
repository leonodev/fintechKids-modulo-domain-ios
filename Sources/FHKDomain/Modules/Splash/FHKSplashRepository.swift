//
//  FHKSplashRepository.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/3/26.
//

import Foundation

public struct FHKSplashRepository: Sendable {
    public var readLanguageCurrent: @Sendable () async throws -> String? = { nil }
    
    public init() {}
}
