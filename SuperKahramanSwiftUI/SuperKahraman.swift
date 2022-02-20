//
//  SuperKahraman.swift
//  SuperKahramanSwiftUI
//
//  Created by Hüseyin Atık on 19.02.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperKahraman : Identifiable{
    
    var id = UUID()
    var isim: String
    var gercekIsim:String
    var gorselİsmi: String
    var sehir: String
    var meslek: String
    var koordinat : Koordinat
    
    var koordinatLakosyonu : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
    
}

struct Koordinat{
    var latitude : Double
    var longitude : Double
}

let batman=SuperKahraman(isim: "Batman", gercekIsim: "Bruce Wayne", gorselİsmi: "batman", sehir: "Gotham", meslek: "İş adamı", koordinat: Koordinat(latitude: 20.0, longitude: 20.0))

let superman=SuperKahraman(isim: "Superman", gercekIsim: "Clark Kent", gorselİsmi: "superman", sehir: "Kansas", meslek: "Gazeteci", koordinat: Koordinat(latitude: 20.0, longitude: 20.0))

let spiderman=SuperKahraman(isim: "Spiderman", gercekIsim: "Peter Parker", gorselİsmi: "spiderman", sehir: "NewYork", meslek: "Fotoğrafçı", koordinat: Koordinat(latitude: 20.0, longitude: 20.0))

let ironman=SuperKahraman(isim: "Iron Man", gercekIsim: "Tonay Stark", gorselİsmi: "ironman", sehir: "Los Angeles", meslek: "Fizikçi", koordinat: Koordinat(latitude: 20.0, longitude: 20.0))

let superkahramanDizisi=[batman,spiderman,ironman,superman]
