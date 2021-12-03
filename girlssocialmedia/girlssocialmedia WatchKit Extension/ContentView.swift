//
//  ContentView.swift
//  girlssocialmedia WatchKit Extension
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Oi")
            Spacer()
            Image(systemName: "heart.fill")
        }
        .foregroundColor(Color.pink)
        .padding()
        .background(Color.secondary)
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
