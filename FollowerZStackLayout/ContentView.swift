//
//  ContentView.swift
//  FollowerZStackLayout
//
//  Created by Satish Vekariya on 28/03/2023.
//

import SwiftUI

struct ContentView: View {
    static let border = Color(uiColor: UIColor(red: 0.125, green: 0.031, blue: 0.2, alpha: 1))
    @State private var text = "jane.d"                  
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Email")
                .foregroundColor(Self.border)
            FollowerZStack {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Self.border, lineWidth: 3)
                TextField("Email", text: $text)
                    .background(Color.white)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
