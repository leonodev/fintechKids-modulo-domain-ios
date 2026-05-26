//
//  MenuHomeItem.swift
//  FHKDomain
//
//  Created by fleon  on 26/5/26.
//

public struct MenuHomeItem: Decodable {
    public let id: Int
    public let name: String
    public let icon: String
    public let label_localized_key: String
    public let active: Bool
}
