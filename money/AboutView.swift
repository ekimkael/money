//
//  AboutView.swift
//  money
//
//  Created by Ekim Kael on 02/04/2022.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView{
            Image("avatar")
                .resizable()
                .scaledToFit()
                .padding(.horizontal)
            Text("Money")
                .font(.largeTitle)
                .bold()
            Text("by Tontine Inc.")
                .font(.caption2)
                .foregroundColor(.secondary)

            Text("You need to be strict to achieve your goals and we are the guardians of this self-discipline. We provide you a Piggy, not a porcelain one that you are going to break because the temptation was too strong but a real one, a digital one that you are going to feed so that it will grow and gain weight.")
                .padding()
            
            Section{
                Text("Registration")
                    .font(.title)
                    .bold()
                Text("Money est un produit de la société Tontine Inc soumis au droit camerounais.")
                
                HStack{
                    VStack{
                        Text("Capital")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("2 345 000 000 FCFA")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }
                HStack{
                    VStack{
                        Text("Registre du Commerce et du Crédit Mobilier")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("SN-DKR- 2016 B 29225")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }
                HStack{
                    VStack{
                        Text("NINEA")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("0061848582V31")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }
                HStack{
                    VStack{
                        Text("Siège social")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Rue Léo Frobenius X Rond Point Damas – Yaoundé.")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                }
                HStack{
                    VStack{
                        Text("Contacts")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("hello@moneyapp.com")
                            .font(.title3)
                            .fontWeight(.bold)
                        Text("+237 242 859 65 05")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }
            }.padding(2)
            
            
            Text("© 2021 • Tontine Inc.™")
                .foregroundColor(.secondary)
                .font(.footnote)

            
            
            .navigationBarTitle("About Money", displayMode: .inline)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
