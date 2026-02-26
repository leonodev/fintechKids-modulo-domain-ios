//
//  FHKAnalyticsProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

public protocol FHKAnalyticsProtocol: FHKInjectableProtocol {
    func track(_ event: AnalyticsEvent)
}
