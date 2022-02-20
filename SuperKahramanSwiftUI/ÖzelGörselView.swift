//
//  ÖzelGörselView.swift
//  SuperKahramanSwiftUI
//
//  Created by Hüseyin Atık on 19.02.2022.
//

import SwiftUI

struct O_zelGo_rselView: View {
    var body: some View {
        
        Image("batman")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth:5)).shadow(radius: 12)
    }
}

struct O_zelGo_rselView_Previews: PreviewProvider {
    static var previews: some View {
        O_zelGo_rselView()
    }
}
