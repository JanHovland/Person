//
//  ContentView.swift
//  Person
//
//  Created by Jan Hovland on 03/09/2019.
//  Copyright © 2019 Jan Hovland. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""

    var body: some View {
        VStack {
            
            Image("Image")
                .resizable()
                .frame(width: CGFloat(100.0), height: CGFloat(100.0))
                .clipped()
           
            
            TextField("Password", text: $password)
                .textContentType(.newPassword)
            
            TextField("Username", text: $username)
                .textContentType(.givenName)
           
            
            Button(action: {
                print("\(self.username) and \(self.password)" as Any)
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
