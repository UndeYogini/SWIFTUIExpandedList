//
//  CityListModel.swift
//  SWIFTUIExpandedList
//
//  Created by Yogini Unde on 20/05/24.
//

import Foundation

struct CityListModel: Decodable, Identifiable {
    let id = UUID()
    var city: String?
   var adminName: String?
    var items: [CityListModel]?
    
    init(city: String, items: [CityListModel]) {
        self.city = city
        self.items = items
    }
    
}
