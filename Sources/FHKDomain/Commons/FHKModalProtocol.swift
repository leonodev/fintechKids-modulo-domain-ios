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
    func show<V: View>(onDismiss: (() -> Void)?, @ViewBuilder _ content: () -> V)
    func dismiss()
}
