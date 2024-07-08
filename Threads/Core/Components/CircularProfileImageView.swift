//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by MasterBi on 8/7/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("user-1")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CircularProfileImageView()
}
