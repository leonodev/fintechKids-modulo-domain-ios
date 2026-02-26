//
//  ToastAppareanceProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 26/2/26.
//

import Foundation
import SwiftUI

public protocol ToastAppareanceProtocol {
    var borderColor: Color { get }
    var fontText: Font { get }
    var cornerRadius: CGFloat { get }
    var borderWidth: CGFloat { get }
    var shadow: CGFloat { get }
}
