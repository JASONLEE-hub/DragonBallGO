//
//  DragonRaderView.swift
//  DragonBallGO
//
//  Created by 이재승 on 6/4/24.
//

import SwiftUI

struct DragonRaderView: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    var body: some View {
        VStack {
            LazyVGrid(columns: columns) {
                Button {
                    
                } label: {
                    Image(._1Star)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }

                Image(._1Star)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(._1Star)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(._1Star)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(._1Star)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(._1Star)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(._1Star)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(._1Star)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding()
        }
        .background(Color(.rader))
    }
}

#Preview {
    DragonRaderView()
}
