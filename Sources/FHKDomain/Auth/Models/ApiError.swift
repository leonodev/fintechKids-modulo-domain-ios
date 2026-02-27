//
//  ApiError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public struct FHKApiError: Decodable, Sendable {
    let code: Int
    let errorCode: String
    let msg: String
    
    public init(code: Int, errorCode: String, msg: String) {
        self.code = code
        self.errorCode = errorCode
        self.msg = msg
    }

    enum CodingKeys: String, CodingKey {
        case code
        case errorCode = "error_code"
        case msg
    }
}
