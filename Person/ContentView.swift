//
//  ContentView.swift
//  Person
//
//  Created by Jan Hovland on 03/09/2019.
//  Copyright © 2019 Jan Hovland. All rights reserved.
//

// Neste oppgave er å få posisjonert elementene på skjermen

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var passord = ""

    var body: some View {
        VStack {
            
            // padding(.vertical)
            
            Image("Image")
                .resizable()
                .frame(width: CGFloat(40.0), height: CGFloat(40.0))
                .clipped()
            
            /*
            Image("")
                .resizable()
                .frame(width: CGFloat(100.0), height: CGFloat(100.0))
                .clipped()
            
            */
            
            Spacer(minLength: 1)
            
            VStack {
                
                // Spacer(minLength: 30)
                
                Form {
                                    
                    Text("Epost")
                        . padding(.leading, 10)
                         
                    TextField("Legg inn epost ", text: $email)
                        .keyboardType(.emailAddress)
                        . padding(.leading, 10)
                
                 
                     Text("Passord")
                        . padding(.leading, 10)
                        
                     SecureField("Legg inn passord", text: $passord)
                        .keyboardType(.asciiCapable)
                         . padding(.leading, 10)
                                    
                }
                 
            }
            
            VStack {
            
                Spacer(minLength: 10)
                
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

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
