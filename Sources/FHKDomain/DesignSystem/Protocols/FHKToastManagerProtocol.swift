//
//  FHKToastManagerProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 2/3/26.
//

@MainActor
public protocol FHKToastManagerProtocol: Sendable {
    var currentToast: ToastInfo? { get set }
    var isVisible: Bool { get set }
    func show(info: ToastInfo, duration: Double)
    func dismiss()
}
