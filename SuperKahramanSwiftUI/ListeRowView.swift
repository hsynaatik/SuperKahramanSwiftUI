//
//  ListeRowView.swift
//  SuperKahramanSwiftUI
//
//  Created by Hüseyin Atık on 19.02.2022.
//

import SwiftUI

struct ListeRowView: View {
    var superKahraman: SuperKahraman
    var body: some View {
        HStack{
            Image(superKahraman.gorselİsmi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 200, alignment: .leading)
                .clipShape(Circle())
           
            VStack{
                Text(superKahraman.isim).font(.title)
                Text(superKahraman.gercekIsim)
            }
        }.padding()
        
    }
}

struct ListeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListeRowView(superKahraman: batman)
    }
}
