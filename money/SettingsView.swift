//
//  SettingsView.swift
//  money
//
//  Created by Ekim Kael on 02/04/2022.
//

import SwiftUI

struct SettingsView: View {
    @State private var numbers = [1,2,3,4,5,6,7,8,9]
    @State private var interest:Bool = true
    
    var body: some View {
        GeometryReader { g in
            ScrollView {
                VStack {
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 96, height: 96)
                        .clipped()
                        .cornerRadius(96)
                    Text("Ekim Kael")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("hello@ekimkael.io")
                        .foregroundColor(.secondary)
                    
                    HStack{
                        Button(action: {
                            print("button pressed")
                        }, label: {
                            Image(systemName: "qrcode")
                        })
                        .frame(width: 48, height: 48)
                        .background(Color(.secondarySystemBackground))
                        .clipShape(Circle())
                        
                        Button(action: {
                            print("button pressed")
                        }, label: {
                            Image(systemName: "qrcode.viewfinder")
                        })
                        .frame(width: 48, height: 48)
                        .background(Color(.secondarySystemBackground))
                        .clipShape(Circle())
                    }.padding(.top).padding(0)
                }.frame(maxWidth: .infinity).padding(.vertical)
                
                List {
                    Section(header: Text("User Informations"),content: {
                        NavigationLink("Edit profile", destination: Text("Placeholder"))
                        NavigationLink("Change secret code", destination: Text("Placeholder"))
                        NavigationLink("Invite friends", destination: Text("Placeholder"))
                        Toggle("Notifications", isOn: $interest)
                    })
                    Section(header: Text("Help and contact"), content: {
                        NavigationLink(
                            destination: Text("Where to find us"),
                            label: {
                                HStack{
                                    Image(systemName: "mappin.and.ellipse")
                                        .foregroundColor(.purple)
                                    Text("Where to find us")
                                }
                            })
                        NavigationLink(destination: Text("Terms"), label:{
                            Image(systemName: "doc.text.fill")
                                .foregroundColor(.blue)
                            Text("Terms and conditions")
                        })
                        NavigationLink(destination: Text("Contact"), label:{
                            Image(systemName: "phone.fill")
                                .foregroundColor(.green)
                            Text("Contact us")
                        })
                        NavigationLink("Complaints", destination: Text("Complaints"))
                        NavigationLink("About", destination: AboutView())
                    })
                    
                    Text("© 2022 • Money LLC.™ • by Ekim Kael")
                        .foregroundColor(.secondary)
                        .font(.footnote)
                }.frame(height: g.size.height)
                .listStyle(InsetGroupedListStyle())
            }
        }
        
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
