//
//  Stats.swift
//  ViteMaDose
//
//  Created by Victor Sarda on 10/04/2021.
//

import Foundation

// MARK: - StatsValue

struct StatsValue: Codable {
    let disponibles: Int
    let total: Int
    let creneaux: Int

    enum CodingKeys: String, CodingKey {
        case disponibles = "disponibles"
        case total = "total"
        case creneaux = "creneaux"
    }
}

enum StatsKey {
    case allCounties
    case county(Int)

    var rawValue: String {
        switch self {
            case .allCounties:
                return "tout_departement"
            case let .county(code):
                return String(code)
        }
    }
}

typealias Stats = [String: StatsValue]
