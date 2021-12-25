//
//  HomePostView.swift
//  girlssocialmedia WatchKit Extension
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct HomePostView: View {
    var body: some View {
        NavigationLink(destination: PostDetail()) {
            HStack {
                Capsule()
                    .frame(width: 4)
                    .foregroundColor(Color.pink)
                
                VStack(alignment:.leading) {
                    Text("Teste la la la")
                        .lineLimit(1)
                    Text("Author")
                        .font(.subheadline)
                        .fontWeight(.ultraLight)
                }
                Spacer()
            }
        }
        .frame(height: 60)
    }
}

struct HomePostView_Previews: PreviewProvider {
    static var previews: some View {
        HomePostView()
    }
}
