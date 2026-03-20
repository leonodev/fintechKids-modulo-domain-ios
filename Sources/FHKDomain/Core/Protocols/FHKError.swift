//
//  FHKError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/3/26.
//

import Foundation

public protocol FHKError: Error, Equatable {
    var msnLocalizedKey: String { get }
    var logMessage: String { get }
    var analyticsIdentifier: String? { get } // Recomendado: Max 100 caracteres
    var isShouldTrack: Bool { get }
}
