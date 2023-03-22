//
//  Extension + View.swift
//  SwiftUIScrollView
//
//  Created by Никифоров Игорь Викторович on 22.03.2023.
//

import SwiftUI

extension View {
    @ViewBuilder func `if`<T>(_ condition: Bool, transform: (Self) -> T) -> some View where T : View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
