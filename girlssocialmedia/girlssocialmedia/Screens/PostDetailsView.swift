//
//  PostDetailsView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 12/12/21.
//

import SwiftUI

struct PostDetailsView: View {
    var body: some View {
        ZStack {
            Color("ColorWine").edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Text("Amaralzaao")
                    .fontWeight(.semibold)
                Text("Carlos Amaral")
                    .fontWeight(.thin)
                
                ScrollView(.vertical) {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lectus sit amet enim facilisis vestibulum. Etiam at nibh lectus. Nulla at volutpat erat. Nulla ac tempus nunc. Vivamus vitae diam non tellus bibendum lacinia vitae quis elit. Phasellus tincidunt pellentesque est egestas consequat. Donec ultricies mi at dolor lobortis, nec faucibus lorem tristique. Nullam dapibus nisi ut vulputate tristique. Nulla volutpat at risus ac sagittis. Proin ultrices quam vitae faucibus sodales. Mauris vitae consequat ex. Phasellus sollicitudin lobortis enim vel venenatis. Mauris urna sapien, auctor nec lobortis et, suscipit non turpis. Maecenas quis enim tempor, malesuada nisi eget, hendrerit diam. Phasellus vel lectus elit. Curabitur convallis erat sapien, in consectetur felis mattis eget. Suspendisse potenti. Sed et est quis eros volutpat tempus fringilla nec orci. Phasellus eget condimentum nisi. Ut porttitor tellus a nisl condimentum vestibulum. In est turpis, cursus eget lectus ac, dapibus laoreet ex. Nunc maximus justo non libero placerat, ac pharetra libero maximus. Phasellus finibus pellentesque elit quis volutpat. Pellentesque sit amet dui vitae sem iaculis malesuada. Morbi vitae vehicula ex. Praesent vitae erat ac odio finibus laoreet. Sed ultricies consectetur blandit. In gravida venenatis ligula, at aliquet massa imperdiet at. Vivamus eget sapien at purus ultrices sagittis sit amet vel leo. Sed suscipit consequat libero, id mollis nisl laoreet eu. Nulla eu sapien erat. Integer non consequat nulla, vel vestibulum tortor")
                        .padding(.vertical)
                        .font(.callout)
                }
                
                HStack {
                    Image(systemName: "heart")
                }
            }
            .padding()
        }
        .navigationTitle("Titulo do post")
    }
}

struct PostDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailsView()
    }
}
