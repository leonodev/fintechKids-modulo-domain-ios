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

// Mocks por defecto: Como son estáticos y no dependen de bases de datos ni de la red,
// pueden vivir aquí mismo en el dominio para que estén disponibles en todas partes.
public extension FHKSplashRepository {
    static var test: Self {
        var repository = Self()
        repository.readLanguageCurrent = { "es" }
        return repository
    }
    
    static var preview: Self {
        var repository = Self()
        repository.readLanguageCurrent = { "en" }
        return repository
    }
}
