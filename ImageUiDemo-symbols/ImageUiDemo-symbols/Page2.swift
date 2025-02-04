//
// array and ForEach

import SwiftUI

// Array of image names
let imageArray = [
  "rectangle",
  "triangle",
  "hexagon",
  "pentagon",
  "rhombus",
  "diamond",
  "circle",
  "seal",
  "oval",
  "capsule"
]

private struct NamedFont: Identifiable {
  let name: String
  let font: Font
  var id: String { name }
}


private let namedFonts: [NamedFont] = [
  NamedFont(name: "Large Title", font: .largeTitle),
  NamedFont(name: "Title", font: .title),
  NamedFont(name: "Headline", font: .headline),
  NamedFont(name: "Body", font: .body),
  NamedFont(name: "Caption", font: .caption)
]


struct Page2: View {
  var body: some View {
    VStack {
//      ForEach(namedFonts) { namedFont in
//        Text(namedFont.name)
//          .font(namedFont.font)
//      }
      ForEach(imageArray, id: \.self) { item in
        Image(systemName: item)
          .resizable()
          .frame(width:100, height: 100)
      }
//        ForEach(0 ..< imageArray.count, id: \.self) {
//            index in
//        Image(systemName: imageArray[index])
//          .resizable()
//          .frame(width:100, height: 100)
//      }
    }
  }
}

#Preview {
    Page2()
}

// https://tisch.nyu.edu/about/directory
