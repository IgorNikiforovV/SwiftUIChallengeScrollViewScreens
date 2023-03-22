//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by Никифоров Игорь Викторович on 16.03.2023.
//

import SwiftUI

struct ContentView: View {
    let topics = Topic.topicList
    @State var isHorisontalScrolling = false {
        didSet {
            print("isVerticalScrolling: \(isHorisontalScrolling)")
        }
    }

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                VStack() {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("MONDAY, AUG, 20")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("Your Reading")
                                .font(.largeTitle)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                        }
                        Spacer()
                        Toggle("", isOn: $isHorisontalScrolling)
                            .toggleStyle(SwitchToggleStyle(tint: .indigo))
                            .frame(width: 40)
                    }
                }
            }.padding([.horizontal])
            ScrollView(isHorisontalScrolling ? .horizontal : .vertical, showsIndicators: false) {
                ZStack(alignment: .top) {
                    VStack {
                        CollectionTopicsView(topics: topics, needUseFrame: $isHorisontalScrolling)
                            .opacity(isHorisontalScrolling ? 0 : 1)
                    }
                    HStack {
                        CollectionTopicsView(topics: topics, needUseFrame: $isHorisontalScrolling)
                            .opacity(isHorisontalScrolling ? 1 : 0)
                    }
                }.animation(.easeInOut(duration: 0.5))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CollectionTopicsView: View {
    var topics: [Topic]
    @Binding var needUseFrame: Bool

    var body: some View {
        ForEach(topics, id: \.self) { row in
            CardView(image: row.image,
                     category: row.category,
                     heading: row.heading,
                     author: row.author).if(needUseFrame) { view in
                         view.frame(width: 300)
                     }
        }


    }
}
