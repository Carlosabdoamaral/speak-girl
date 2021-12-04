//
//  SetCommentView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 03/12/21.
//

import SwiftUI

struct SetCommentView: View {
    @State private var comment : String = ""
    
    var body: some View {
        VStack {
            Spacer(minLength: 20)
            GroupBox {
                TextField("Comenatário", text: $comment)
                    .frame(height: 50)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
    }
}

struct SetCommentView_Previews: PreviewProvider {
    static var previews: some View {
        SetCommentView()
    }
}
