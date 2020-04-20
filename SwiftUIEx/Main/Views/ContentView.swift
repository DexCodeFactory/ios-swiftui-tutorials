//
//  ContentView.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-04-20.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let viewModel: MainViewModel = MainViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.categories) { category in
                    HStack {
                        Image(category.imageName)
                        
                        VStack {
                            Text(category.title)
                            Text(category.description)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("SwiftUI Tutorials"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
