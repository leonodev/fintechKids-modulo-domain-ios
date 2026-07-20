//
//  FHKServices+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public struct FHKServices: Sendable {
    public var getURL: @Sendable (EnvironmentType,
                                  Countries,
                                  ServiceType) throws -> String = { _,_,_ in "" }
    
    public init() {}
}


public extension FHKServices {
    static var test: Self {
        Self()
    }
}
