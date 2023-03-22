//
//  Topic.swift
//  SwiftUIScrollView
//
//  Created by Никифоров Игорь Викторович on 21.03.2023.
//

struct Topic: Hashable {
    let image: String
    let category: String
    let heading: String
    let author: String
}

extension Topic {
    static var topicList: [Topic] {
        [
            Topic(image: "design-tools",
                  category: "SwiftUI",
                  heading: "Xcode includes intuitive design tools",
                  author: "Piter Moon"),
            Topic(image: "macos-programming",
                  category: "macOS",
                  heading: "Building a Simple Editing App",
                  author: "Gabriel Theodoropoulos"),
            Topic(image: "flutter-app",
                  category: "Flutter",
                  heading: "Building a Complex Layout with Flutter",
                  author: "Lawrence Tan"),
            Topic(image: "natural-language-api",
                  category: "iOS",
                  heading: "What's Newin Natural Language API",
                  author: "Sai Kambampati"),
            Topic(image: "swiftui-button",
                  category: "SwiftUI",
                  heading: "Drawing a Border with Rounded Corners",
                  author: "Simon Ng")
        ]
    }
}
