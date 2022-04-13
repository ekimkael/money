//
//  LoginView.swift
//  money
//
//  Created by Ekim Kael on 13/04/2022.
//

import SwiftUI

struct LoginView: View {
    @State var phoneNumber: String = ""
    @State var pin: String = ""
    @State private var country = "Cameroon"
    
    var body: some View {
        
        Form {
            Section {
                Text("Please confirm your country code and enter your phone number ")
                    .foregroundColor(.gray)
                    .padding(.vertical)
                Picker(selection: $country, label: Text("Country")) {
                    ForEach(["Cameroon", "Ivory Coast", "DR Congo"], id: \.self) {
                        Text($0).tag($0)
                    }
                }
                TextField("phone number", text: $phoneNumber)
                    .keyboardType(.numberPad)
                SecureField("PIN", text: $pin)
            }
            
            Section {
                Button(action: {}, label: {
                    Text("Forgot your PIN?")
                })

                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Text("Sign up").foregroundColor(Color(.systemBlue))
                    })
            }
        }.listStyle(GroupedListStyle())
        
        .navigationBarTitle("Login to your account")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItemGroup{
                Button(action: {}, label: {
                    Text("Submit")
                })
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
