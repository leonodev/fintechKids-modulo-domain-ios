//
//  ConfigurationProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public protocol FHKConfigurationProtocol: FHKInjectableProtocol {
    var parentMail: String? { get set }
    var familyName: String? { get set }
    func refreshParentMail()
    func refreshFamilyName()
    
    var environmentType: EnvironmentType { get set }
    func setEnvironment(_ environmentType: EnvironmentType)
    func getEnvironment() -> EnvironmentType
}
