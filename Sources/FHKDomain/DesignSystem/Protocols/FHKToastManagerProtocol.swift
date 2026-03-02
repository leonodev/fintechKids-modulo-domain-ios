//
//  FHKToastManagerProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 2/3/26.
//

import FHKUtils

@MainActor
public protocol FHKToastManagerProtocol: Sendable {
    var currentToast: FHKToastInfo? { get set }
    var isVisible: Bool { get set }
    func show(info: FHKToastInfo, duration: Double)
    func dismiss()
}
