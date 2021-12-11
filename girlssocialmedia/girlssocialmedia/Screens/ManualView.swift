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
            ManualTabViewTemplate()
            
            ManualTabViewTemplate()
            
            ManualTabViewTemplate()
        }
        .edgesIgnoringSafeArea(.all)
        .tabViewStyle(PageTabViewStyle())
        .background(LinearGradient(colors: [Color("ColorWine"), Color.black], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct ManualView_Previews: PreviewProvider {
    static var previews: some View {
        ManualView()
    }
}
