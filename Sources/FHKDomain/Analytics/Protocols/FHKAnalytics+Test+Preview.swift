//
//  FHKAnalytics+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

/*
public protocol FHKAnalyticsProtocol: FHKInjectableProtocol {
    func track(_ event: AnalyticsEvent)
}
*/

public struct FHKAnalytics: Sendable {
    public var track: @Sendable(AnalyticsEvent) -> Void = { _ in }
    
    public init() {}
}


public extension FHKAnalytics {
    static var test: Self {
        Self()
    }
}
