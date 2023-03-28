//
//  FollowerZStack.swift
//  FollowerZStackLayout
//
//  Created by Satish Vekariya on 28/03/2023.
//

import SwiftUI

struct FollowerZStack: Layout {
    func sizeThatFits(
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) -> CGSize {
        guard let last = subviews.last else {
            return .zero
        }
        let d = last.dimensions(in: proposal)
        return .init(width: d.width, height: d.height + 2*14)
    }

    func placeSubviews(
        in bounds: CGRect,
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) {
        guard let last = subviews.last else {
            return
        }
        let d = last.dimensions(in: proposal)
        
        for subview in subviews {
            if subview == last  {
                subview.place(
                    at: .init(x: bounds.midX, y: bounds.midY),
                    anchor: .center,
                    proposal: .init(width: d.width - 2*8, height: d.height)
                )
            } else {
                subview.place(
                    at: .init(x: bounds.midX, y: bounds.midY),
                    anchor: .center,
                    proposal: .init(width: d.width, height: d.height + 2*14)
                )
            }
        }
    }
}
