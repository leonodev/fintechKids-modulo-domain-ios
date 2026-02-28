//
//  CoreProtocols.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public protocol FHKError: Error, Equatable {
    var titleUI: String { get }
    var messageUI: String { get }
    var logMessage: String { get }
    var isShouldTrack: Bool { get }
}

public extension FHKError {
    var titleUI: String { "" }
}


public protocol FHKServicesAPIProtocol: FHKInjectableProtocol {
    func getURL(environment: EnvironmentType,
                country: Countries,
                serviceKey: ServiceType) throws -> String
}
