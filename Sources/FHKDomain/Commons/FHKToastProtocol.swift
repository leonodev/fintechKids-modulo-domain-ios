//
//  FHKToastProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 7/3/26.
//

@MainActor
public protocol FHKToastProtocol: Sendable {
    var currentToast: FHKToastInfo? { get set }
    var isVisible: Bool { get set }
    func show(info: FHKToastInfo, duration: Double)
    func dismiss()
}
