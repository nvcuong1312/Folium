//
//  Core.swift
//  Folium
//
//  Created by Jarrod Norwell on 15/5/2024.
//

import Foundation
import UIKit

enum Core : String, Codable, Hashable {
    enum Console : String, Codable, Hashable {
        case gba = "Game Boy Advance"
        case n3ds = "Nintendo 3DS"
        case nds = "Nintendo DS"
        case nes = "Nintendo Entertainment System"
        
        var shortened: String {
            switch self {
            case .gba: "GBA"
            case .n3ds: "3DS"
            case .nds: "NDS"
            case .nes: "NES"
            }
        }
    }
    
    case cytrus = "Cytrus"
    case grape = "Grape"
    case kiwi = "Kiwi"
    
    var console: Console {
        switch self {
        case .cytrus: .n3ds
        case .grape: .nds
        case .kiwi: .nes
        }
    }
    
    var isNintendo: Bool {
        self == .cytrus || self == .grape || self == .kiwi
    }
    
    var newButtonColors: [Button.`Type` : (UIColor, UIColor)] {
        switch self {
        case .cytrus:
            [
                .dpadUp : (.black, .white),
                .dpadDown : (.black, .white),
                .dpadLeft : (.black, .white),
                .dpadRight : (.black, .white),
                .east : (.systemRed, .white),
                .south : (.systemYellow, .white),
                .north : (.systemBlue, .white),
                .west : (.systemGreen, .white),
            ]
        case .grape:
            [
                :
            ]
        case .kiwi:
            [
                :
            ]
        }
    }
    
    static let cores: [Core] = [.cytrus, .grape]
}
