//
//  CoreProtocols.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public protocol FHKServicesAPIProtocol: FHKInjectableProtocol {
    func getURL(environment: EnvironmentType,
                country: Countries,
                serviceKey: ServiceType) throws -> String
}
