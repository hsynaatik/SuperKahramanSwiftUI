//
//  ContentView.swift
//  SuperKahramanSwiftUI
//
//  Created by Hüseyin Atık on 19.02.2022.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView{
            List(superkahramanDizisi){
                superKahraman in
                NavigationLink(
                destination: DetayView(secilenKahraman: superKahraman),
                label:{
                   ListeRowView(superKahraman: superKahraman)
                })
                }.navigationTitle(Text("SuperKahraman Kitabı"))
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
