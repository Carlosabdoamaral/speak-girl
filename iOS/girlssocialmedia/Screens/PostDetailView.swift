//
//  PostDetailView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 03/12/21.
//

import SwiftUI

struct PostDetailView: View {
    
    @State private var liked : Bool = false
    @State private var retweeted : Bool = false
    @State private var likes : Int = 455
    @State private var retweets : Int = 130
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Author")
                        .font(.subheadline)
                    
                    Spacer()
                }
                .padding(.horizontal, 23)
                
                Spacer(minLength: 10)
                ScrollView(.vertical, showsIndicators: false) {
                    Text("""
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at convallis velit, at varius ante. Mauris nec tortor hendrerit, maximus ipsum vel, sagittis ex. Praesent sodales molestie metus eu eleifend. Etiam ac sapien consectetur, tincidunt arcu vitae, hendrerit sapien. Duis sollicitudin vitae purus nec condimentum. Curabitur orci tellus, ullamcorper non ante id, facilisis egestas metus. Aenean et velit lectus. Fusce vitae tempor turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam a nunc libero. Morbi vel risus vel risus porttitor lobortis id ut lorem. In sit amet fringilla lacus. Vestibulum bibendum consequat blandit. Donec et ultrices nisl, scelerisque hendrerit magna. Morbi hendrerit malesuada nulla, vitae hendrerit risus posuere at. Nam vestibulum blandit justo, sed pretium nisi ornare Duis neque quam, lobortis efficitur augue ut, mollis suscipit neque. Nulla condimentum, sapien et feugiat gravida, urna nunc elementum neque, vel lacinia ipsum mi a odio. Fusce tortor augue, ullamcorper non scelerisque at, tristique vehicula tortor. Duis pharetra sodales

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at convallis velit, at varius ante. Mauris nec tortor hendrerit, maximus ipsum vel, sagittis ex. Praesent sodales molestie metus eu eleifend. Etiam ac sapien consectetur, tincidunt arcu vitae, hendrerit sapien. Duis sollicitudin vitae purus nec condimentum. Curabitur orci tellus, ullamcorper non ante id, facilisis egestas metus. Aenean et velit lectus. Fusce vitae tempor turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam a nunc libero. Morbi vel risus vel risus porttitor lobortis id ut lorem. In sit amet fringilla lacus. Vestibulum bibendum consequat blandit. Donec et ultrices nisl, scelerisque hendrerit magna. Morbi hendrerit malesuada nulla, vitae hendrerit risus posuere at. Nam vestibulum blandit justo, sed pretium nisi ornare Duis neque quam, lobortis efficitur augue ut, mollis suscipit neque. Nulla condimentum, sapien et feugiat gravida, urna nunc elementum neque, vel lacinia ipsum mi a odio. Fusce tortor augue, ullamcorper non scelerisque at, tristique vehicula tortor. Duis pharetra sodales
""")
                }
                .padding()
                .font(.body)
                
                HStack {
                    HStack {
                        if liked {
                            Image(systemName: "heart.fill")
                                .onTapGesture {
                                    self.liked = false
                                    self.likes = likes - 1
                                }
                        } else {
                            Image(systemName: "heart")
                                .onTapGesture(perform: {
                                    self.liked = true
                                    self.likes = likes + 1
                                })
                        }
                        Text("\(likes)")
                    }
                    Spacer()
                    
                    HStack {
                        if retweeted {
                            Image(systemName: "repeat.1")
                                .onTapGesture {
                                    self.retweeted = false
                                    self.retweets = retweets - 1
                                }
                        } else {
                            Image(systemName: "repeat")
                                .onTapGesture {
                                    self.retweeted = true
                                    self.retweets = retweets + 1
                                }
                        }
                        Text("\(retweets)")
                    }
                    Spacer()
                    
                    HStack {
                        Image(systemName: "message")
                        Text("10")
                    }
                }
                .padding(.horizontal, 50)
                .frame(height: 40, alignment: .center)
                .foregroundColor(Color.pink)
                .background(Color.white)
            }
            .navigationBarTitle("Título")
        }
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView()
    }
}
