// Created by Enes UTKU

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ZStack {
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
                    
                    FeedCellView()
                    
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
