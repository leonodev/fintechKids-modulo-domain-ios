//
//  LoginEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 20/3/26.
//

public struct LoginEntity: Encodable {
    public let email: String
    public let password: String

    public init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
