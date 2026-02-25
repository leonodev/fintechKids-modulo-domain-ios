//
//  SupabaseApiError.swift
//  FHKDomain
//
//  Created by Fredy Leon on 25/2/26.
//

import Foundation

public struct SupabaseApiError: Decodable {
    let code: Int
    let errorCode: String
    let msg: String

    enum CodingKeys: String, CodingKey {
        case code
        case errorCode = "error_code"
        case msg
    }
}
