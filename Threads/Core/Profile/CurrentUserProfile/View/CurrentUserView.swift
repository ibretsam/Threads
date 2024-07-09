//
//  CurrentUserView.swift
//  Threads
//
//  Created by MasterBi on 9/7/24.
//

import SwiftUI

struct CurrentUserView: View {
    @StateObject var viewModel = CurrentUserProfileViewModel()
    
    private var currentUser: User? {
        return viewModel.currentUser
    }
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
    //            Bio & Stats
                VStack(spacing: 20) {
                    ProfileHeaderView(user: currentUser)
                    
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                            .frame(width: 352, height: 32)
                            .background(.white)
                            .cornerRadius(8)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(.systemGray4), lineWidth: 1)
                            }
                    }
                    
    //                User content list view
                    UserContentListView()
                }
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            AuthService.shared.signOut()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CurrentUserView()
}
