//
//  FilterDataSource.swift
//  Mapbox-iOS-Examples
//
//  Created by Roman Blum on 26.09.16.
//  Copyright © 2016 rmnblm. All rights reserved.
//

import UIKit
import Mapbox

class FilteringLayer {
    let title: String
    let iconName: String
    let color: UIColor
    let predicate: NSPredicate
    
    public var styleLayer: MGLStyleLayer!
    
    init(title: String, iconName: String, color: UIColor, predicate: NSPredicate) {
        self.title = title
        self.iconName = iconName
        self.color = color
        self.predicate = predicate
    }
}

struct FilteringDataSource {
    let layers = [
        FilteringLayer(
            title: "Cafes",
            iconName: "cafe-15",
            color: UIColor.brown,
            predicate: NSPredicate(format: "amenity == 'cafe'")
        ),
        FilteringLayer(
            title: "Banks",
            iconName: "bank-15",
            color: UIColor.green,
            predicate: NSPredicate(format: "amenity == 'bank'")
        ),
        FilteringLayer(
            title: "Toilets",
            iconName: "toilet-15",
            color: UIColor.white,
            predicate: NSPredicate(format: "amenity == 'toilets'")
        ),
        FilteringLayer(
            title: "Restaurants",
            iconName: "restaurant-15",
            color: UIColor.blue,
            predicate: NSPredicate(format: "amenity == 'restaurant'")
        )
    ]
}
