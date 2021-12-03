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
                
                Text("Teste la la la")
                    .lineLimit(1)
                    .padding(.leading, 5)
                Spacer()
            }
        }
        .frame(height: 40)
    }
}

struct HomePostView_Previews: PreviewProvider {
    static var previews: some View {
        HomePostView()
    }
}
