// Created by Enes UTKU

import SwiftUI

struct TimezoneView: View {
    
    @State var area = ""
    
    var body: some View {
        VStack {
            ZStack {
                Color.black.ignoresSafeArea()
                
                VStack {
                    ZStack {
                        Text("Time Zone")
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                        
                        HStack {
                            Image(systemName: "arrow.backward")
                                .foregroundStyle(.white)
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal)
                        
                    }
                    Spacer()
                    
                    VStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Select Your Time Zone")
                                    .font(.title3)
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)

                                Spacer()
                            }
                            .padding([.horizontal, .top])
                            Text("To receive your notification during daytime, select your timezone. When changing your time zone your current post will be deleted. You can only change time zones once a day!")
                                .foregroundStyle(.white)
                                .padding([.horizontal, .top])
                        }
                    }
                    
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 14)
                                .frame(height: 190)
                                .foregroundStyle(.white).opacity(0.05)
                            
                            VStack {
                                Button(action: {
                                    self.area = "america"
                                }, label: {
                                    HStack {
                                        Image(systemName: "globe.europe.africa.fill")
                                            .foregroundStyle(.white)
                                        Text("America")
                                            .foregroundStyle(.white)
                                            .fontWeight(.semibold)
                                        
                                        Spacer()
                                        
                                        if area == "america" {
                                            Image(systemName: "checkmark.circle")
                                                .foregroundStyle(.gray)
                                                .font(.system(size: 14))
                                        }
                                    }
                                    .padding(.horizontal)
                                    .frame(height: 30)
                                })
                                
                                Divider()
                                
                                Button(action: {
                                    self.area = "europe"
                                }, label: {
                                    HStack {
                                        Image(systemName: "globe.europe.africa.fill")
                                            .foregroundStyle(.white)
                                        Text("Europe")
                                            .foregroundStyle(.white)
                                            .fontWeight(.semibold)
                                        
                                        Spacer()
                                        
                                        if area == "europe" {
                                            Image(systemName: "checkmark.circle")
                                                .foregroundStyle(.gray)
                                                .font(.system(size: 14))
                                        }
                                    }
                                    .padding(.horizontal)
                                    .frame(height: 30)
                                })
                                
                                Divider()
                                
                                Button(action: {
                                    self.area = "westasia"
                                }, label: {
                                    HStack {
                                        Image(systemName: "globe.europe.africa.fill")
                                            .foregroundStyle(.white)
                                        Text("West Asia")
                                            .foregroundStyle(.white)
                                            .fontWeight(.semibold)
                                        
                                        Spacer()
                                        
                                        if area == "westasia" {
                                            Image(systemName: "checkmark.circle")
                                                .foregroundStyle(.gray)
                                                .font(.system(size: 14))
                                        }
                                    }
                                    .padding(.horizontal)
                                    .frame(height: 30)
                                })
                                
                                Divider()
                                
                                Button(action: {
                                    self.area = "eastasia"
                                }, label: {
                                    HStack {
                                        Image(systemName: "globe.europe.africa.fill")
                                            .foregroundStyle(.white)
                                        Text("East Asia")
                                            .foregroundStyle(.white)
                                            .fontWeight(.semibold)
                                        
                                        Spacer()
                                        
                                        if area == "eastasia" {
                                            Image(systemName: "checkmark.circle")
                                                .foregroundStyle(.gray)
                                                .font(.system(size: 14))
                                        }
                                    }
                                    .padding(.horizontal)
                                    .frame(height: 30)
                                })
                                
                            }
                            
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(height: 45)
                                .foregroundStyle(.white).opacity(0.9)
                                .padding()
                                .overlay {
                                    Text("Save")
                                        .foregroundStyle(.black)
                                }
                        })
                        
                    }
                    .padding(.top)
                }
            }
        }
    }
}

#Preview {
    TimezoneView()
}
