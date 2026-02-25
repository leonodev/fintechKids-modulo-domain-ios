//
//  ConfigurationProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public protocol FHKConfigurationProtocol: FHKInjectableProtocol {
    var environmentType: EnvironmentType { get set }
    func setEnvironment(_ environmentType: EnvironmentType)
    func getEnvironment() -> EnvironmentType
    func getParentMail() async -> String?
}
