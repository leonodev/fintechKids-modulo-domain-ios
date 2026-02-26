//
//  ToastProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 26/2/26.
//

/// Protocolo definido para la inyección de dependencias
public protocol FHKToastManagerProtocol: FHKInjectableProtocol {
    var currentToast: ToastInfo? { get set }
    var isVisible: Bool { get set }
    @MainActor func show(info: ToastInfo, duration: Double)
    @MainActor func dismiss()
}
