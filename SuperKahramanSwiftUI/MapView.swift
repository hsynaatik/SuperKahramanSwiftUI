//
//  MapView.swift
//  SuperKahramanSwiftUI
//
//  Created by Hüseyin Atık on 19.02.2022.
//

import SwiftUI
import MapKit

struct MapView:UIViewRepresentable{
   
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region=MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame:  .zero)
    }
  
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: superkahramanDizisi[0].koordinatLakosyonu)
    }
}
