//
//  EmergencyView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 16/12/21.
//

import SwiftUI

struct EmergencyView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("ColorWine").edgesIgnoringSafeArea(.all)
                ScrollView(.vertical) {
                    VStack {
                        ForEach(0..<5) { j in
                            
                            if (j == 0) {
                                Divider()
                                EmergencyTemplateView()
                                Divider()
                            } else {
                                EmergencyTemplateView()
                                Divider()
                            }
                        }
                        .padding(.vertical)
                    }
                }
            }
            .navigationTitle("Emergência")
        }
    }
}


struct EmergencyView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyView()
    }
}
