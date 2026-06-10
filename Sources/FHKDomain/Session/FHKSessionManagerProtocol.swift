//
//  FHKSessionManagerProtocol.swift
//  FHKDomain
//
//  Created by fleon  on 10/6/26.
//

import Foundation

public protocol FHKSessionManagerProtocol: FHKInjectableProtocol {
    var isAuthenticated: Bool { set get }
    func initializeSession() async
    func login() async throws
    func logout() async throws
}
