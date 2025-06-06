//
//  ContentView.swift
//  fd
//
//  Created by Alberto Calderón on 24-12-24.
//

import SwiftUI
import sdk

struct ContentView: View {
    
    let endpoint = amparoConfiguration()
    @State private var isModalPresented = false
    @State private var path: [Int] = []
   
    var body: some View {
        NavigationStack (path: $path) {
            VStack {

                Text("SDK Demo")
                Text(endpoint)
                
                
                Button("Open Modal") {
                    path.append(1)
                }
                .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                
            }
            .padding()
            .navigationDestination(for: Int.self) { value in
                AmparoWrapper(step: value, path: $path)
            }
        }
        
    }
    
}

func amparoConfiguration() -> String{
    
    let config = AmparoIdConfig(
        sdkApiKey: "APIKEY",
        baseUrl: "BASEURL",
        ksmKey: "KSM",
        skmKey: "SDK",
        eCert: "ENCODED CERT", resultCallback: {result in
                print("The flux response is : \(result)")
        })

    config.helpMessageTime = 500
    config.mainColor = Color(red: 0.0047, green: 0.847, blue: 0.44)
    config.contactButtonText = "Call us"
    config.contactSupport = {
        WhatsappConn.openChatWith(phoneNumber: "+5690303456")
    }
    AmparoId.setConfig(config: config)
    
    return AmparoId.amparoCheck()
}

#Preview {
    ContentView()
}

