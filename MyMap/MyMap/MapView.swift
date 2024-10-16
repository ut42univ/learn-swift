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
    
    var body: some View {
        Map() {
            
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
                }
            }
        }
    }
}

#Preview {
    MapView(searchKey: "東京駅")
}
