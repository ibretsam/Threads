//
//  ProfileView.swift
//  Threads
//
//  Created by MasterBi on 8/7/24.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    var body: some View {
        ScrollView(showsIndicators: false) {
            //            Bio & Stats
            VStack(spacing: 20) {
                ProfileHeaderView(user: user)
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                UserContentListView(user: user)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
        
    }
}

#Preview {
    ProfileView(user: DeveloperPreview.shared.user)
}
