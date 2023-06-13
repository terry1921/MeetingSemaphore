//
//  ContentView.swift
//  Meeting Semaphore
//
//  Created by Enrique Espinoza on 13/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var didTap:Bool = false
    
    var body: some View {
        VStack {
            Text("Meeting Semaphore")
                .font(.largeTitle)
            Spacer()
            Image(systemName: "circle.dashed.inset.filled")
                .resizable()
                .scaledToFit()
                .foregroundColor(didTap ? Color.red : Color.green)
                .frame(width: 300.0, height: 300.0, alignment: .center)
                .onTapGesture {
                    self.didTap = !self.didTap
                }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
