//
//  FHKModal+Test+Preview.swift
//  FHKDomain
//
//  Created by Fredy Leon on 7/3/26.
//

import SwiftUI
import FHKUtils

/*
public protocol FHKModalProtocol: AnyObject, Sendable {
    var isPresented: Bool { get set }
    var content: AnyView? { get set }
    func show<V: View>(onDismiss: (() -> Void)?, @ViewBuilder content: () -> V)
    func dismiss()
}
*/

@MainActor
public struct FHKModal: Sendable {
    public var isPresented: @MainActor @Sendable () -> Bool = { false }
    public var content: @MainActor @Sendable () -> AnyView? = { nil }
    public var config: @MainActor @Sendable () -> FHKPopupConfig? = { nil }
    public var showContent: @MainActor @Sendable ((@Sendable () -> Void)?, AnyView, FHKPopupConfig?) -> Void = { _, _, _ in }
    public var dismiss: @MainActor @Sendable () -> Void = {}
    
    public init() {}
    
    public func show<V: View>(
        config: FHKPopupConfig? = nil,
        onDismiss: (@Sendable () -> Void)? = nil,
        @ViewBuilder content: () -> V
    ) {
        let erasedView = AnyView(content())
        self.showContent(onDismiss, erasedView, config)
    }
}
