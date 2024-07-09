//
//  PreviewProvider.swift
//  Threads
//
//  Created by MasterBi on 9/7/24.
//
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Rhaenyra Targaryen", email: "itsyourqueen@westeros.com", username: "nyra", profileImageUrl: "", bio: "Queen of the Andals")
}
