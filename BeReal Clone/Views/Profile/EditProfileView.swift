// Created by Enes UTKU

import SwiftUI

struct EditProfileView: View {
    
    @State var fullname = ""
    @State var username = ""
    @State var bio = ""
    @State var location = ""
    
    var body: some View {
        VStack {
            ZStack {
                Color.black.ignoresSafeArea()
                
                VStack {
                    ZStack {
                        HStack {
                            Text("Cancel")
                                .foregroundStyle(.white)
                            
                            Spacer()
                            
                            Text("Save")
                                .foregroundStyle(.gray)
                        }
                        .padding(.horizontal, 10)
                        
                        Text("Edit Profile")
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                    }
                    
                    HStack {
                        
                        Spacer()
                        
                        Rectangle()
                            .frame(height: 0.7)
                            .foregroundStyle(.gray)
                            .opacity(0.5)
                            .padding(.horizontal, 6)
                    }
                    Spacer()
                }
                
                VStack {
                    VStack {
                        ZStack(alignment: .bottomTrailing, content: {
                            Image("avatar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 120)
                                .clipShape(Circle())
                            
                            ZStack {
                                ZStack {
                                    Circle()
                                        .frame(width: 34, height: 34)
                                        .foregroundStyle(.black)
                                    Circle()
                                        .frame(width: 30, height: 30)
                                        .foregroundStyle(.white).opacity(0.9)
                                }
                                Image(systemName: "camera.fill")
                                    .font(.system(size: 16))
                                    .shadow(color: .white, radius: 1, x: 1, y: 1)
                            }
                        })
                    }
                    .padding(.top, 60)
                    
                    // MENU
                    
                    VStack {
                        Rectangle()
                            .frame(height: 0.7)
                            .foregroundStyle(.gray)
                            .opacity(0.5)
                            .padding(.horizontal, 6)
                        
                        HStack {
                            HStack {
                                Text("Full Name")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Spacer()
                            }
                            .frame(width: 90)
                            
                            HStack {
                                TextField("", text: $fullname)
                                    .font(.system(size: 16))
                                    .placeholder(when: fullname.isEmpty) {
                                        Text("Enes")
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 16))
                                    }
                                    .foregroundStyle(.white)
                                    .padding(.leading, 10)
                                Spacer()
                            }
                            .frame(width: 230)
                        }
                        
                        Rectangle()
                            .frame(height: 0.7)
                            .foregroundStyle(.gray)
                            .opacity(0.5)
                            .padding(.horizontal, 6)
                        
                        HStack {
                            HStack {
                                Text("Username")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Spacer()
                            }
                            .frame(width: 90)
                            
                            HStack {
                                TextField("", text: $username)
                                    .font(.system(size: 16))
                                    .placeholder(when: username.isEmpty) {
                                        Text("enesutku")
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 16))
                                    }
                                    .foregroundStyle(.white)
                                    .padding(.leading, 10)
                                Spacer()
                            }
                            .frame(width: 230)
                        }
                        
                        Rectangle()
                            .frame(height: 0.7)
                            .foregroundStyle(.gray)
                            .opacity(0.5)
                            .padding(.horizontal, 6)
                        
                        HStack {
                            HStack {
                                Text("Bio")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Spacer()
                            }
                            .frame(width: 90)
                            
                            HStack {
                                TextField("", text: $bio)
                                    .font(.system(size: 16))
                                    .placeholder(when: bio.isEmpty) {
                                        Text("Bio")
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 16))
                                    }
                                    .foregroundStyle(.white)
                                    .padding(.leading, 10)
                                Spacer()
                            }
                            .frame(width: 230)
                        }
                        
                        Rectangle()
                            .frame(height: 0.7)
                            .foregroundStyle(.gray)
                            .opacity(0.5)
                            .padding(.horizontal, 6)
                        
                        HStack {
                            HStack {
                                Text("Location")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 16))
                                Spacer()
                            }
                            .frame(width: 90)
                            
                            HStack {
                                TextField("", text: $location)
                                    .font(.system(size: 16))
                                    .placeholder(when: location.isEmpty) {
                                        Text("Location")
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 16))
                                    }
                                    .foregroundStyle(.white)
                                    .padding(.leading, 10)
                                Spacer()
                            }
                            .frame(width: 230)
                        }
                        Spacer()
                    }

                    .padding(.horizontal)
                    .padding(.top, 24)
                }
                
            }
        }
    }
}

#Preview {
    EditProfileView()
}
