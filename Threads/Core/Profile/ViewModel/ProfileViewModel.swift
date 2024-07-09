//
//  ProfileViewModel.swift
//  Threads
//
//  Created by MasterBi on 9/7/24.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
       setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("DEBUG: User in the view model from combine is \(user)")
        }.store(in: &cancellables)
    }
}
