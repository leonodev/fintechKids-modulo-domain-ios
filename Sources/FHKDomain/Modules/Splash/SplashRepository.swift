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

/*
 
 1. Boilerplate masivo: Por cada servicio tenías que crear el protocolo, la clase real, el mock para tests y el stub para previews (4 archivos).
 
 2. Barreras de módulos: Lo que te pasaba a ti; el código de producción no podía ver los mocks del target de pruebas.
 
 3. Peleas con Swift 6: El uso de any Protocolo (existenciales) tiene penalizaciones de rendimiento y micro-problemas de compatibilidad con genéricos y concurrencia (como el error de tipos que te explotó al principio).
 
 */
