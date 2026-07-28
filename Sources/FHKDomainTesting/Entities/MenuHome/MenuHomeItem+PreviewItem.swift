//
//  MenuHomeItem+PreviewItem.swift
//  FHKDomain
//
//  Created by fleon  on 27/7/26.
//

import FHKDomain

public extension MenuHomeItem {
    static var previewItem: Self {
        MenuHomeItem(id: 1,
                     name: "payments",
                     icon: "payments-icon",
                     label_localized_key: "key_payments_title",
                     active: true)
    }
}
