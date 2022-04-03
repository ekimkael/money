//
//  QRCodeView.swift
//  money
//
//  Created by Ekim Kael on 03/04/2022.
//

import SwiftUI

struct QRCodeView: View {
    var body: some View {
        Spacer()
        
        GroupBox{
            VStack{
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                
                Text("Ekim Kael")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Mooney ID")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                Image("qrcode")
                    .resizable()
                    .padding()
                    .frame(width: 150, height: 150, alignment: .center)
                    .background(Color(.white))
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                
            }.frame(width: 250, height: 250, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
        }
        
        VStack(alignment: .center){
            Text("Your QR code is private. if you share it with someone, they can scan it with their Mooney app camera to send you some money.")
                .font(.caption)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.vertical, 3.0)
            
            Button(action: {}, label: {
                Text("Reset QR Code")
                    .font(.subheadline)
            })
        }.frame(width: 250, alignment: .center)
        
        Spacer()
        
        Button(action: {}, label: {
            Text("Scan")
                .padding()
                .foregroundColor(.white)
                .frame(width: 280, alignment: .center)
                .background(Color(.systemBlue))
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
        })
        
        
        .navigationBarTitle("QR Code", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            let url = URL(string: "https://mooney.app")
            let av = UIActivityViewController(activityItems: [url!, "Tontine Inc.", "Mooney"], applicationActivities: nil)
            
            UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
        }){
            Image(systemName: "square.and.arrow.up")
        })
    }
}

struct QRCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeView()
    }
}
