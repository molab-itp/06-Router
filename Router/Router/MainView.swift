//
//  MainView.swift
//  Router
//
//  Created by jht2 on 3/4/24.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var pageModel: PageModel;

    var body: some View {
        VStack {
            switch pageModel.pageTag {
            case .Page1:
                Page1()
            case .Page3:
                Page3()
            case .Page5:
                Page5()
            }
            Spacer()
            Text("Hello, World!")
            HStack {
                Button(action: {
                    pageModel.pageTag = .Page1
                }) {
                    Text("[Page1]")
                }
                Button(action: {
                    pageModel.pageTag = .Page3
                }) {
                    Text("[Page3]")
                }
                Button(action: {
                    pageModel.pageTag = .Page5
                }) {
                    Text("[Page5]")
                }
            }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(PageModel())
}
