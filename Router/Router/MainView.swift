//
//  MainView.swift
//  Router
//
//  Created by jht2 on 3/4/24.
//

import SwiftUI

struct MainView: View {
  @Environment(PageModel.self) var pageModel

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
    }
    // TRY: extract as sub view
    let extractedExpr: HStack<TupleView<(Button<Text>, Button<Text>, Button<Text>)>> = // TRY: extract as sub view
    HStack {
      Button(action: {
        pageModel.pageTag = .Page1
      }) {
        Text("[Page1]")
          .bold(pageModel.pageTag == .Page1)
      }
      Button(action: {
        pageModel.pageTag = .Page3
      }) {
        Text("[Page3]")
          .bold(pageModel.pageTag == .Page3)
      }
      Button(action: {
        pageModel.pageTag = .Page5
      }) {
        Text("[Page5]")
          .bold(pageModel.pageTag == .Page5)
      }
    }
    extractedExpr
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

#Preview {
  MainView()
    .environment(PageModel())
}
