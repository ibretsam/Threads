//
//  User.swift
//  Threads
//
//  Created by MasterBi on 9/7/24.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
