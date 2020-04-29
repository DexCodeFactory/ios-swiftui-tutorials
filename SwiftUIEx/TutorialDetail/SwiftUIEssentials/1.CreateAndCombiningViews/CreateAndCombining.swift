//
//  CreateAndCombining.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-28.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct CreateAndCombining: View {
    var body: some View {
        VStack {
            VStack(alignment: .center) {
                Text("Turtle Rock")
                    .font(.title)
                    .padding(.bottom, 10)
                
                HStack(alignment: .top) {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            
            MapView()
                .edgesIgnoringSafeArea(.bottom)
                .offset(x: 0, y: 130)
                .overlay(
                    CircleImage()
                        .offset(x: 0, y: -220)
                )

            Spacer()
        }
    }
}

struct CreateAndCombining_Previews: PreviewProvider {
    static var previews: some View {
        CreateAndCombining()
    }
}
