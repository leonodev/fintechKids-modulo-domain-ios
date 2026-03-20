//
//  RegisterUserEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 20/3/26.
//

public struct RegisterUserEntity: Encodable {
    public let email: String
    public let password: String
    public let familyName: String

    public init(email: String, password: String, familyName: String) {
        self.email = email
        self.password = password
        self.familyName = familyName
    }
}
