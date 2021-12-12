//
//  CommunityListView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 12/12/21.
//

import SwiftUI

struct CommunityListView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("ColorWine").edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    Text("Voce não esta sozinho(a)(e)...")
                        .fontWeight(.thin)
                    
                    ScrollView(.vertical) {
                        VStack {
                            ForEach(0..<30) { j in
                                ProfileNavLink()
                                Divider()
                            }
                        }
                    }
                    .padding(.vertical)
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("Nós")
        }
    }
}

struct CommunityListView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityListView()
    }
}
