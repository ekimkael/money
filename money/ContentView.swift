//
//  ContentView.swift
//  money
//
//  Created by Ekim Kael on 02/04/2022.
//

import SwiftUI

struct CardGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
            configuration.content
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                GroupBox {
                    VStack {
                        Text("Solde")
                            .fontWeight(.bold)
                            .foregroundColor(.secondary)
                        Text("XAF 3,409")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Divider()
                        
                        HStack{
                            Text("Transactions")
                                .font(.callout)
                                .fontWeight(.bold)
                            Spacer()
                            NavigationLink(destination: LoginView()) {
                                Text("See more")
                                    .font(.callout)
                                    .fontWeight(.bold)
                            }
                        }
                        
                        HStack{
                            HStack{
                                Image(systemName: "cart.fill")
                                    .frame(width: 32, height: 32)
                                    .background(Color(.secondaryLabel))
                                    .clipShape(Circle())
                                VStack(alignment: .leading){
                                    Text("Steve Rogers")
                                        .font(.callout)
                                        .fontWeight(.bold)
                                    Text("Cash out")
                                        .font(.caption)
                                }
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .trailing){
                                Text("-CFA 2,000")
                                    .font(.callout)
                                    .fontWeight(.bold)
                                Text("21:13")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            
                            .padding(.top)
                        }
                    }
                }.background(Color(.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                
                LazyVGrid(columns: [.init(), .init()]) {
                    ForEach(0..<10) { _ in
                        GroupBox(
                            label: Label("Heart Rate", systemImage: "heart.fill")
                                .foregroundColor(.red)
                        ) {
                            Text("Your hear rate is 90 BPM.")
                        }.groupBoxStyle(CardGroupBoxStyle())
                    }
                }
            }
            
            .padding(.horizontal)
            .navigationTitle("Dashboard")
            .toolbar(content: {
                NavigationLink(
                    destination: SettingsView(),
                    label: {
                        Button(action: {
                            print("button pressed")
                        }, label: {
                            Image(systemName: "person.crop.circle.fill")
                        })
                    })
                
                
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
