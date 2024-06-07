// Created by Enes UTKU

import SwiftUI

struct ThreeDots: View {
    
    var size: CGFloat
    var color: Color
    
    var body: some View {
        HStack {
            Image(systemName: "circle.fill")
                .foregroundStyle(color)
                .font(.system(size: size))
            Image(systemName: "circle.fill")
                .foregroundStyle(color)
                .font(.system(size: size))
                .padding(.leading, -4)
            Image(systemName: "circle.fill")
                .foregroundStyle(color)
                .font(.system(size: size))
                .padding(.leading, -4)
        }
    }
}

#Preview {
    ThreeDots(size: 10, color: .black)
}
