//
//  Router.swift
//  ImageUiDemo-urls
//
//  Created by jht2 on 9/14/23.
//

import SwiftUI

@main
struct Router: App {
    @State var pageModel = PageModel();
    var body: some Scene {
        WindowGroup {
            // This is the starting page for the app
            MainView()
                .environment(pageModel)
        }
    }
}

@Observable
class PageModel {
    var pageTag: PageEnum = .Page1
}

enum PageEnum {
    case Page1
    case Page3
    case Page5
}
