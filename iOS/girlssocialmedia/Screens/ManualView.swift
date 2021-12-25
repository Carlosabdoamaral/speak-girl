//
//  ManualView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 11/12/21.
//

import SwiftUI

struct ManualView: View {
    
    
    var body: some View {
        TabView() {
            ForEach(0..<5) { i in
                Text("aaaaa")
            }
        }
        .edgesIgnoringSafeArea(.all)
        .tabViewStyle(PageTabViewStyle())
        .background(LinearGradient(colors: [Color("ColorWine").opacity(1), Color.black], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct ManualView_Previews: PreviewProvider {
    static var previews: some View {
        ManualView()
    }
}
