//
//  PreviewProvider.swift
//  Threads
//
//  Created by MasterBi on 9/7/24.
//
import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Rhaenyra Targaryen", email: "itsyourqueen@westeros.com", username: "nyra", profileImageUrl: "", bio: "Queen of the Andals")
    
    let thread = Thread(ownerUid: "123", caption: "Dracarys", timestamp: Timestamp(), likes: 1000)
}
