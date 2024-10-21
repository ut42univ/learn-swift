//
//  MapView.swift
//  MyMap
//
//  Created by Takuya Uehara on 2024/10/16.
//

import SwiftUI
import MapKit

struct MapView: View {
    let searchKey: String
    @State var targetCoordinate = CLLocationCoordinate2D()
    @State var cameraPosition: MapCameraPosition = .automatic
    
    var body: some View {
        Map(position: $cameraPosition) {
            Marker(searchKey, coordinate: targetCoordinate)
        }
        .onChange(of: searchKey, initial: true) { oldValue, newValue in
            print("検索キーワード：\(newValue)")
            
            let request = MKLocalSearch.Request()
            request.naturalLanguageQuery = newValue
            
            let search = MKLocalSearch(request: request)
            
            search.start { response, error in
                if let mapItems = response?.mapItems,
                   let mapItem = mapItems.first {
                    targetCoordinate = mapItem.placemark.coordinate
                    
                    print("緯度経度: \(targetCoordinate)")
                    
                    cameraPosition = .region(MKCoordinateRegion(
                        center: targetCoordinate,
                        latitudinalMeters: 500.0,
                        longitudinalMeters: 500.0
                    ))
                }
            }
        }
    }
}

#Preview {
    MapView(searchKey: "東京駅")
}
