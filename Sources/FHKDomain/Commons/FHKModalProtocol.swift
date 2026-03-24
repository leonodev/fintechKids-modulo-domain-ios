//
//  ModalProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 7/3/26.
//

import SwiftUI

public protocol FHKModalProtocol: AnyObject, Sendable {
    var isPresented: Bool { get set }
    var content: AnyView? { get set }
    func forceUpdate()
    func show<V: View>(onDismiss: (() -> Void)?, @ViewBuilder content: () -> V)
    func dismiss()
}
