//
//  DetayView.swift
//  SuperKahramanSwiftUI
//
//  Created by Hüseyin Atık on 19.02.2022.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman:SuperKahraman
    
    var body: some View {
        
        VStack{
            MapView(coordinate: secilenKahraman.koordinatLakosyonu)
                .frame(height: UIScreen.main.bounds.height*0.3)
                .edgesIgnoringSafeArea(.top)
            
            OzelGorselView(image: Image(secilenKahraman.gorselİsmi))
                .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.3, alignment: .center)
                .offset( y: UIScreen.main.bounds.height *
                         -0.26)
                .padding(.bottom,-50)
            VStack{
                HStack{
                    Spacer()
                Text(secilenKahraman.isim)
                    .font(.largeTitle)
                    .foregroundColor(.red)
                Spacer()
                    Text(secilenKahraman.gercekIsim)
                        .font(.title)
                        .foregroundColor(.orange)
                    Spacer()
                }.offset(y:UIScreen.main.bounds.height * -0.2)
                HStack{
                    Spacer()
                    Text(secilenKahraman.sehir)
                        .font(.title2)
                        .foregroundColor(.blue)
                    Spacer()
                    Text(secilenKahraman.meslek)
                        .font(.title2)
                        .foregroundColor(.green)
                    Spacer()
                }.padding()
                .offset(y:UIScreen.main.bounds.height * -0.2)
                Spacer()
              
            }
            
        }
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenKahraman: spiderman)
    }
}
