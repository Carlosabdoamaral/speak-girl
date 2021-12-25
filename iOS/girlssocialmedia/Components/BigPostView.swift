//
//  BigPostView.swift
//  girlssocialmedia
//
//  Created by Carlos Amaral on 03/12/21.
//

import SwiftUI

struct BigPostView: View {
    @State private var liked : Bool = false
    @State private var retweeted : Bool = false
    @State private var likes : Int = 455
    @State private var retweets : Int = 130
    
    
    var body: some View {
        ZStack {
            VStack {
                
                VStack {
                    Text("Title")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .frame(width: 300)
                        .lineLimit(1)
                    
                    Text("Author")
                        .foregroundColor(Color.white)
                        .font(.subheadline)
                        .fontWeight(.light)
                        .frame(width: 300)
                        .lineLimit(1)
                }
                Spacer()
                
                VStack {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id tempor quam. Morbi consectetur pellentesque consequat. Fusce eget nisi sit amet nisi placerat elementum. Sed egestas rutrum laoreet. Ut ut congue magna. Mauris vitae ligula ac risus iaculis ultrices et quis magna. Etiam eleifend purus ac orci ultricies, facilisis porta dolor blandit. Pellentesque sit amet bibendum tellus.")
                        .foregroundColor(Color.white)
                        .font(.body)
                        .fontWeight(.medium)
                        .lineLimit(12)
                }
                
                Spacer()
                
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
                .padding(.horizontal, 20)
            }
        }
        .padding()
        .frame(width: 350, height: 400)
        .background(LinearGradient(colors: [Color.pink, Color.red], startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(15)
    }
}

struct BigPostView_Previews: PreviewProvider {
    static var previews: some View {
        BigPostView()
    }
}
