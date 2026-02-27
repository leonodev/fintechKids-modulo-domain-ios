//
//  SecureKeyProtocol.swift
//  FHKDomain
//
//  Created by Fredy Leon on 27/2/26.
//

public protocol SecureKeyProtocol: FHKInjectableProtocol {
    func getAnonKey() throws -> String
}
