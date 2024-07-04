//
//  HoldingsModel.swift
//  TradingApp
//
//  Created by Vipin Kumar on 23/05/24.
//

import Foundation

// MARK: - HoldingsModel
struct HoldingsModel: Codable {
    let data: HoldingsData?
}

// MARK: - HoldingsData
struct HoldingsData: Codable {
    let userHolding: [UserHolding]?
}

// MARK: - UserHolding
struct UserHolding: Codable {
    let symbol: String?
    let quantity: Int?
    let ltp, avgPrice, close: Double?
}
