//
//  ModalProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 26/2/26.
//

import SwiftUI

public protocol FHKModalProtocol {
    var isPresented: Bool { get set }
    var content: AnyView? { get set }
    func show<V: View>(@ViewBuilder _ content: () -> V)
    func dismiss()
}
