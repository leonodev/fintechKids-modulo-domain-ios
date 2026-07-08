//
//  FHKToast.swift
//  FHKDomain
//
//  Created by Fredy Leon on 7/3/26.
//

import Foundation

public struct FHKToast: Sendable {
    public var currentToast: @Sendable () -> FHKToastInfo? = { nil }
    public var isVisible: @Sendable () -> Bool = { false }
    public var show: @Sendable (FHKToastInfo, Double) -> Void = { _, _ in }
    public var dismiss: @Sendable () -> Void = { }
    
    public init() {}
}
