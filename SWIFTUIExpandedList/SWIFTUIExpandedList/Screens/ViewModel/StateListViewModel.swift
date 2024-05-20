//
//  StateListViewModel.swift
//  SWIFTUIExpandedList
//
//  Created by Yogini Unde on 20/05/24.
//

import Foundation
 private var items: [CityListModel] = []

class StateListViewModel: ObservableObject {
    // MARK: - Properties
    var httpClient: HttpClientProtocol!
    @Published var cityList: [CityListModel] = []


    func getJson()
    {
        guard let filePath = Bundle.main.url(forResource: Constants.fileName, withExtension: Constants.fileExtension) else {
            items = []
            return
        }
        
        do {
            let data = try Data(contentsOf: filePath)
            let results = try JSONDecoder().decode([CityListModel].self, from: data)
            let dict = Dictionary(grouping: results, by: { $0.adminName })
            items = dict.map { (key, value) -> CityListModel in
                return CityListModel(city: key!, items: value)
            }
        } catch {
            print(error)
        }
    }
}
