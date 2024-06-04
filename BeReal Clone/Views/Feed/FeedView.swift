// Created by Enes UTKU

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ZStack {
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        VStack {
                            ZStack {
                                VStack(alignment: .leading) {
                                    Image("back")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(.rect(cornerRadius: 5))
                                }
                                
                                VStack {
                                    HStack {
                                        Image("front")
                                            .resizable()
                                            .scaledToFit()
                                            .border(.black)
                                            .clipShape(.rect(cornerRadius: 2))
                                            .frame(width: 20, height: 40)
                                            .padding(.leading)
                                        Spacer()
                                    }
                                    .padding(.top, 18)
                                    Spacer()
                                }
                            }
                            .frame(width: 100)
                        }
                        
                        VStack {
                            Text("Add a caption...")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                            Text("View Comment")
                                .foregroundStyle(.gray)
                            
                            HStack {
                                Text("Home •  1 hr late")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 12))
                                ThreeDots(size: 3, color: .gray)
                            }
                        }
                        
                        ForEach(1..<8) { _ in
                        FeedCellView()
                        }
                        
                    }
                    .padding(.top, 80)
                }
                
                
                
                
                
                VStack {
                    VStack {
                        HStack {
                            Image(systemName: "person.2.fill")
                                .foregroundStyle(.white)
                            
                            Spacer()
                            
                            Text("BeReal.")
                                .foregroundStyle(.white)
                                .font(.system(size: 22))
                                .bold()
                            
                            Spacer()
                            
                            Image("avatar")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .clipShape(Circle())
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            Text("My Friends")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                            
                            Text("Discovery")
                                .foregroundStyle(.gray)
                        }
                    }
                    
                    Spacer()
                    
                    
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
