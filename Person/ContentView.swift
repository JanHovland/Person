//
//  ContentView.swift
//  Person
//
//  Created by Jan Hovland on 03/09/2019.
//  Copyright © 2019 Jan Hovland. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var passord = ""

    var body: some View {
        VStack {
            
            Image("Image")
                .resizable()
                .frame(width: CGFloat(100.0), height: CGFloat(100.0))
                .clipped()
           
            HStack {
                Text("Epost")
                    . padding(.leading, 10)
                    . padding(.trailing, 37)
                    
                TextField("Legg inn epost ", text: $email)
                    .keyboardType(.emailAddress)
            }
            
            HStack {
                 Text("Passord")
                 . padding(.leading, 10)
                 . padding(.trailing, 20)
                 
                 SecureField("Legg inn passord", text: $passord)
                     .keyboardType(.default)
                                
            }
             
                      
            Button(action: {
                if self.email == "" || self.passord == "" {
                }
                else {
                    print("\(self.email) and \(self.passord)" as Any)
                }
            }) {
                Text("Login")
            }
            
           
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
