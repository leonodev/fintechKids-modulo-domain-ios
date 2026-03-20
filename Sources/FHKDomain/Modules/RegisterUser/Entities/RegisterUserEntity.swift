//
//  RegisterUserEntity.swift
//  FHKDomain
//
//  Created by Fredy Leon on 20/3/26.
//

public struct RegisterUserEntity {
    let email: String
    let password: String
    let familyName: String

    public init(email: String, password: String, familyName: String) {
        self.email = email
        self.password = password
        self.familyName = familyName
    }
}
