//
//  Receipt.swift
//  ReceiptTracker
//
//  Created by Eldar Khasmamedov on 2021-12-09.
//

import Foundation

struct Receipt: Identifiable {
    let identifier: String
    let title: String
    
    var id: String {
        identifier
    }
}
