// Created by Enes UTKU

import SwiftUI

struct FeedCellView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .leading, content: {
                
                // Username
                
                HStack {
                    Image("avatar")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(.rect(cornerRadius: 20))
                    
                    VStack(alignment: .leading, content: {
                        
                        Text("enesutku")
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 16))
                        
                        Text("Home • 7 hr late")
                            .foregroundStyle(.white)
                            .font(.system(size: 14))
                    })
                }
                .padding(.horizontal)
                
                
                // Image
                
                ZStack {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            VStack {
                                Image(systemName: "bubble.left.fill")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 25))
                                    .shadow(color: .black, radius: 3, x: 1, y: 1)
                                
                                Image(systemName: "face.smiling.fill")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 25))
                                    .shadow(color: .black, radius: 3, x: 1, y: 1)
                                    .padding(.top, 15)
                            }
                            .padding(.trailing, 20)
                            .padding(.bottom, 80)
                        }
                    }
                    .zIndex(1)
                    
                    VStack {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .clipShape(.rect(cornerRadius: 20))
                        
                        HStack {
                            Text("Add a comment...")
                                .foregroundStyle(.gray)
                                .fontWeight(.semibold)
                                .padding(.leading, 8)
                            
                            Spacer()
                        }
                    }
                    
                    VStack {
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.black)
                                .frame(width: 125, height: 165)
                                .overlay {
                                    
                                    Image("front")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(.rect(cornerRadius: 8))
                                        .frame(width: 120, height: 160)
                                }
                                .padding(.leading)
                            Spacer()
                        }
                        .padding(.top, 18)
                        
                        Spacer()
                        
                    }
                }
            })
            .frame(width: UIScreen.main.bounds.width, height: 600)
            
        }
    }
}

#Preview {
    FeedCellView()
}
