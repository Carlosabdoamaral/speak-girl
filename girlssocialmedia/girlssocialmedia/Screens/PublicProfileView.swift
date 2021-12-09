//
//  PublicProfileView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 03/12/21.
//

import SwiftUI

struct PublicProfileView: View {
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                
            }
            .safeAreaInset(edge: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack() {
                        Text("Username")
                            .font(.largeTitle.weight(.bold))
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "...")
                        }
                    }
                    Text("With safeAreaInset you can create your own custom nav bar.")
                        .font(.caption)
                }
                .padding()
                .background(LinearGradient(colors: [Color.pink.opacity(0.5), Color.purple.opacity(0.5)],
                                           startPoint: .topLeading, endPoint: .bottomTrailing)
                                .overlay(.ultraThinMaterial)
                )
            }
            .navigationBarHidden(true)
            .tint(.orange)
        }
    }
}

struct PublicProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PublicProfileView()
    }
}
