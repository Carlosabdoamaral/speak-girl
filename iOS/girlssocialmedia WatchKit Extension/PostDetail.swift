//
//  PostDetail.swift
//  girlssocialmedia WatchKit Extension
//
//  Created by Carlos Amaral on 02/12/21.
//

import SwiftUI

struct PostDetail: View {
    @State private var likes : Int = 103
    @State private var retweets : Int = 41
    
    @State private var liked : Bool = false
    @State private var retweeted : Bool = false
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ScrollView(.horizontal) {
                    Text("asbdksajbdjkabdkajbsdjkabdjakbsdjkbkasdjkbas")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 2, alignment: .center)
                    Image(systemName: "text.quote")
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 2, alignment: .center)
                }
                
                Text("Content Content  Content")
                    .fontWeight(.light)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 30)
                    
                    HStack {
                        HStack {
                            
                            if liked {
                                Image(systemName: "heart.fill")
                                    .onTapGesture {
                                        self.liked = false
                                        self.likes = likes - 1
                                    }
                            }
                            else {
                                Image(systemName: "heart")
                                    .onTapGesture {
                                        self.liked = true
                                        self.likes = likes + 1
                                    }
                            }
                            Text("\(likes)")
                                .font(.subheadline)
                                .fontWeight(.light)
                        }
                        .foregroundColor(Color.accentColor)
                        
                        Spacer()
                        
                        HStack {
                            if retweeted {
                                Image(systemName: "repeat.1")
                                    .onTapGesture {
                                        self.retweeted = false
                                        self.retweets = retweets - 1
                                    }
                            }
                            else {
                                Image(systemName: "repeat")
                                    .onTapGesture {
                                        self.retweeted = true
                                        self.retweets = retweets + 1
                                    }
                            }
                            Text("\(retweets)")
                                .font(.subheadline)
                                .fontWeight(.light)
                        }
                        .foregroundColor(Color.accentColor)
                    }
                    .padding([.all] ,20)
                    
                }
            }
        }
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var previews: some View {
        PostDetail()
    }
}
