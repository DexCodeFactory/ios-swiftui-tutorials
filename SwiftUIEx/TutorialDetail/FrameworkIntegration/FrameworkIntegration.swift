//
//  FrameworkIntegration.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-06-24.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI

struct FrameworkIntegration: View {

    private let names = [
        "Interfacing with UIKit",
        "Creating a watchOS App",
        "Creating a macOS App"
    ]
    private let pathes = [
        "interfacing-with-uikit",
        "creating-a-watchos-app",
        "creating-a-macos-app"
    ]
    @State var page = 0
    private let numOfPages = 3
    
    var body: some View {
        NavigationView {
            VStack {
                Text(names[page])
                    .font(.title)
                    .padding(.bottom, 10)
                
                PagerView(pageCount: numOfPages, currentIndex: $page) {
                    ForEach(0 ..< numOfPages) { index in
                        WebView(urlPath: self.pathes[index])
                            .border(Color.gray, width: 1.0)
                    }
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                    .shadow(radius: 3, x: 5, y: 5)
                }
            }
            .navigationBarTitle(Text("Framework Integration"))
        }
    }
}

struct FrameworkIntegration_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkIntegration()
    }
}

struct PagerView<Content: View>: View {
    private let pageCount: Int
    @Binding private var currentIndex: Int
    private let content: Content

    @GestureState private var translation: CGFloat = 0
    
    init(pageCount: Int, currentIndex: Binding<Int>, @ViewBuilder content: () -> Content) {
        self.pageCount = pageCount
        self._currentIndex = currentIndex
        self.content = content()
    }
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    self.content.frame(width: geometry.size.width)
                }
                .frame(width: geometry.size.width, alignment: .center)
                .offset(x: -CGFloat(self.currentIndex) * geometry.size.width)
                .offset(x: self.translation)
                .animation(.interactiveSpring())
                .gesture(
                    DragGesture().updating(self.$translation) { value, state, _ in
                        state = value.translation.width
                    }.onEnded { value in
                        let offset = value.translation.width / geometry.size.width
                        let newIndex = (CGFloat(self.currentIndex) - offset).rounded()
                        self.currentIndex = min(max(Int(newIndex), 0), 2)
                    }
                )
            }
            
            PageControl(page: self.$currentIndex, numberOfPages: self.pageCount)
                .padding(.top, 10)
        }
    }
}

struct PageControl : UIViewRepresentable {
    
    @Binding var page : Int
    var numberOfPages: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let view = UIPageControl()
        view.currentPageIndicatorTintColor = .black
        view.pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
        view.numberOfPages = numberOfPages
        return view
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        DispatchQueue.main.async {
            uiView.currentPage = self.page
        }
    }
}
