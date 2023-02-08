//
//  ContentView.swift
//  SwiftUI_Appstorage
//
//  Created by Iván Clemente Moreno on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentUserName: String?
    
    
    var body: some View {
        VStack {
            Text(currentUserName ?? "No hay información de usuario.")
            
            if let username = currentUserName {
                Text(username)
            }
            
            Button ("Guardar") {
                let username = "Dunan"
                currentUserName = username
                UserDefaults.standard.set(username, forKey: "username")
            }
        }.onAppear{
            currentUserName = UserDefaults.standard.string(forKey: "username")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
