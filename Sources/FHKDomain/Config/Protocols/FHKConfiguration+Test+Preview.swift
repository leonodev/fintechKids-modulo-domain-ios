//
//  FHKConfiguration+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

/*
public protocol FHKConfigurationProtocol: FHKInjectableProtocol {
    var parentMail: String? { get set }
    var familyName: String? { get set }
    var approvePin: String? { get }
    func refreshParentMail()
    func refreshFamilyName()
    
    var environmentType: EnvironmentType { get set }
    func setEnvironment(_ environmentType: EnvironmentType)
    func getEnvironment() -> EnvironmentType
}
*/


public struct FHKConfiguration: Sendable {
    public var parentMail: @Sendable() -> String? = { nil }
    public var familyName: @Sendable() -> String? = { nil }
    public var approvePin: @Sendable() -> String? = { nil }
    public var environmentType: @Sendable() -> EnvironmentType = { .production }
    
    public var refreshParentMail: @Sendable() -> Void = { }
    public var refreshFamilyName: @Sendable() -> Void = { }
    public var setEnvironment: @Sendable(EnvironmentType) -> Void = { _ in }
    public var getEnvironment: @Sendable() -> EnvironmentType = { .production }
    
    
    public init() {}
}


public extension FHKConfiguration {
    static var test: Self {
        Self()
    }
}
