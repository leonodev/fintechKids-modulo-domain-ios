//
//  FHKSplashRepositoryProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/3/26.
//

//public protocol FHKSplashRepositoryProtocol: FHKInjectableProtocol {
//    func readLanguageCurrent() async throws -> String?
//}

import Foundation

public struct FHKSplashRepository: Sendable {
    public var readLanguageCurrent: @Sendable () async throws -> String?
    
    public init(readLanguageCurrent: @escaping @Sendable () async throws -> String?) {
        self.readLanguageCurrent = readLanguageCurrent
    }
}

// Mocks por defecto: Como son estáticos y no dependen de bases de datos ni de la red,
// pueden vivir aquí mismo en el dominio para que estén disponibles en todas partes.
public extension FHKSplashRepository {
    static var test: Self {
        Self(readLanguageCurrent: { "es" })
    }
    
    static var preview: Self {
        Self(readLanguageCurrent: { "en" })
    }
}
