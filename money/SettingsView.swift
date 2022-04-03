//
//  SettingsView.swift
//  money
//
//  Created by Ekim Kael on 02/04/2022.
//

import SwiftUI

struct SettingsView: View {
    @State private var interest:Bool = true
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationLink(destination: QRCodeView(), isActive: $isShowingDetailView){}
        
        List {
            Section{
                HStack {
                    HStack {
                        Image("avatar")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 56, height: 56)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading){
                            Text("Ekim Kael")
                                .font(.title3)
                                .fontWeight(.semibold)
                            Text("hello@ekimkael.io")
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        isShowingDetailView = true
                    }, label: {
                        Image(systemName: "qrcode")
                    })
                    .frame(width: 32, height: 32)
                    .background(Color(.secondarySystemBackground))
                    .clipShape(Circle())
                }
                
                NavigationLink("Edit profile", destination: Text("Placeholder"))
                NavigationLink("Change secret code", destination: Text("Placeholder"))
            }
            
            Section(header: Text("General"),content: {
                Text("Invite friends")
                Toggle("Notifications", isOn: $interest)
            })
            
            Section(header: Text("Help and contact"), content: {
                NavigationLink(
                    destination: Text("Where to find us"),
                    label: {
                        Image(systemName: "map.fill")
                        Text("Where to find us")
                    })
                NavigationLink(destination: Text("Terms"), label:{
                    Image(systemName: "doc.text.fill")
                    Text("Terms and conditions")
                })
                NavigationLink(destination: Text("Contact"), label:{
                    Image(systemName: "phone.fill")
                    Text("Contact us")
                })
                NavigationLink(destination: Text("Feedback"), label:{
                    Image(systemName: "text.bubble.fill")
                    Text("Feedback")
                })
            })
            
            Section{
                NavigationLink(destination: AboutView(), label:{
                    Image(systemName: "info.circle.fill")
                    Text("About")
                })
                Text("© 2022 • Money LLC.™ • by Ekim Kael")
                    .foregroundColor(.secondary)
                    .font(.footnote)
            }
        }.listStyle(InsetGroupedListStyle())
        
        
        .navigationTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
