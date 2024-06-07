// Created by Enes UTKU

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ZStack {
                Color.black.ignoresSafeArea()
                
                VStack {
                    HStack {
                        Image(systemName: "arrow.backward")
                            .foregroundStyle(.white)
                            .bold()
                        
                        Spacer()
                        
                        Text("Profile")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        ThreeDots(size: 4, color: .white)
                    }
                    .padding(.horizontal)
                    Spacer()
                }
                
                VStack {
                    Image("avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                    
                    Text("Enes")
                        .foregroundStyle(.white)
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                    
                    Text("@enesutku")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text("Your Memories")
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                        
                        Spacer()
                        
                        HStack(spacing: 4) {
                            Image(systemName: "lock.fill")
                                .foregroundStyle(.white)
                                .font(.system(size: 10))
                            
                            Text("Only visible to you")
                                .foregroundStyle(.gray)
                                .font(.system(size: 10))
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 4)
                    
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundStyle(.white).opacity(0.07)
                                .frame(height: 230)
                            VStack {
                                HStack {
                                    Text("Last 14 days")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 16))
                                        .padding(.top, 8)
                                    
                                    Spacer()
                                }
                                .padding(.leading)
                                
                                VStack {
                                    HStack(spacing: 4) {
                                        ForEach(1..<8) { x in
                                            MemoryView(day: x)
                                        }
                                    }
                                    HStack(spacing: 4) {
                                        ForEach(1..<8) { x in
                                            MemoryView(day: x + 7)
                                        }
                                    }
                                    .padding(.top, -4)
                                }
                                .padding(.top, -4)
                                
                                Text("View All")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 13))
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(.gray, lineWidth: 2)
                                            .frame(width: 175, height: 30)
                                            .opacity(0.5)
                                    }
                                    .padding(.top, 15)
                            }
                            .padding(.top, -15)
                        }
                        
                    }
                    
                    Text("🔗 BeRe.al/enesutku")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                        .padding(.top, 8)
                    
                    Spacer()
                    
                }
                .padding(.top, 35)
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
