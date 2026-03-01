//
//  FHKError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 1/3/26.
//

import Foundation

public protocol FHKError: Error, Equatable {
    var titleUI: String { get }
    var messageUI: String { get }
    var logMessage: String { get }
    var isShouldTrack: Bool { get }
}

public extension FHKError {
    var titleUI: String { "" }
}
