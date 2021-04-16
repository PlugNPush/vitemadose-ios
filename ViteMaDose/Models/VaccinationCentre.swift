//
//  VaccinationCentre.swift
//  ViteMaDose
//
//  Created by Victor Sarda on 07/04/2021.
//

import Foundation

// MARK: - VaccinationCentre

struct VaccinationCentre: Codable {
    let departement: String?
    let nom: String?
    let url: String?
    let location: Location?
    let metadata: Metadata?
    let prochainRdv: String?
    let plateforme: String?
    let type: String?
    let appointmentCount: Int?
    let vaccineType: [String]?

    enum CodingKeys: String, CodingKey {
        case departement = "departement"
        case nom = "nom"
        case url = "url"
        case location = "location"
        case metadata = "metadata"
        case prochainRdv = "prochain_rdv"
        case plateforme = "plateforme"
        case type = "type"
        case appointmentCount = "appointment_count"
        case vaccineType = "vaccine_type"
    }
}

extension VaccinationCentre {
    struct Location: Codable {
        let longitude: Double?
        let latitude: Double?
        let city: String?

        enum CodingKeys: String, CodingKey {
            case longitude = "longitude"
            case latitude = "latitude"
            case city = "city"
        }
    }

    struct Metadata: Codable {
        let address: String?
        let phoneNumber: String?
        let businessHours: [String: String?]?

        enum CodingKeys: String, CodingKey {
            case address = "address"
            case phoneNumber = "phone_number"
            case businessHours = "business_hours"
        }
    }
}


// MARK: - VaccinationCentres

struct VaccinationCentres: Codable {
    let lastUpdated: String?
    let centresDisponibles: [VaccinationCentre]
    let centresIndisponibles: [VaccinationCentre]
    
    enum CodingKeys: String, CodingKey {
        case lastUpdated = "last_updated"
        case centresDisponibles = "centres_disponibles"
        case centresIndisponibles = "centres_indisponibles"
    }
}