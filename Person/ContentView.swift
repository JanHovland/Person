//
//  ContentView.swift
//  Person
//
//  Created by Jan Hovland on 03/09/2019.
//  Copyright © 2019 Jan Hovland. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textString = "Click Me"
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            
            Text("Press the button below")
            
            // Her er det en knapp i Vstack som kun kan trykkes en gang
            
            Button(action: {
                self.textString = "Wow Amazing"
            }) {
               Text(textString)
            }
         .disabled(textString == "Wow Amazing")
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
