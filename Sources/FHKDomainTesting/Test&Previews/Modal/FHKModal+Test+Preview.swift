//
//  FHKModal+Test+Preview.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain
import SwiftUI

@MainActor
public extension FHKModal {
    
    /// Version by Tests
    static var test: Self {
        Self()
    }
    
    /// Version by Previews of SwiftUI
    static var preview: Self {
        var modal = Self()
        modal.isPresented = { true }
        modal.content = { AnyView(Text("Modal de prueba")) }
        return modal
    }
}
